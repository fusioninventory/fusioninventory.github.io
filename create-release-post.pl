#!/usr/bin/perl

use strict;
use warnings;

use DateTime::Format::Mail;
use File::Basename;
use File::Path qw(make_path);
use LWP::Simple;
use Archive::Tar;
use File::Temp qw/ tempfile /;
use Data::Dumper;

my $url = shift;
die "please pass tarball URL as parameter\n" unless $url;

print $url. "\n";
my ( undef, $tarfile ) = tempfile();
getstore( $url, $tarfile );
my $tar = Archive::Tar->new;
$tar->read($tarfile);
my @files = $tar->list_files() or die;

my $project;
my $release;
my $changelog;
foreach my $file (@files) {

    #print$file."\n";
    if ( $file =~ /(FusionInventory-Agent.*?)-([\d\.]+)\/Changes/ ) {

        $project = $1;
        $release = $2;
        print $file. "\n";

        $project =~ s/-/ /g;
        $changelog = $tar->get_content($file);
    }

}
my $in;
my $file;
foreach my $line (split(/\n/, $changelog)) {
    chomp($line);
    if ( $line =~ /^$release\s+(\S.*)/ ) {
        my $date = $1;
        my $datetime = DateTime::Format::Mail->parse_datetime($date);

        $file =
          sprintf( "../wiki/news/%d/%02d/%02d/fusioninventory-agent-%s.mdwn",
            $datetime->year, $datetime->month, $datetime->day, $release );
        make_path( dirname($file) );
        open OUT, ">$file" or die;

        print OUT "[[!meta  date=\""
          . $datetime->ymd
          . "\"]]\n"
          . "# $project $release\n\n"
          . "Hello FusionInventory users,\n\n"
          . "The $project maintainers are glad to announce the $release release.\n\n"
          . "You can download the archive from [the forge]($url)\n"
          . "or directly from [the CPAN](https://metacpan.org/release/FusionInventory-Agent)\n\n"
          . "We did our best to provide a solid release, please [[contact us|/resources]] is you believe you "
          . "find something unexpected\n\n"
          . "## This release changelog\n\n";
        $in = 1;
    }
    elsif ( $in && $line =~ /^\d/ ) {
        last;
    }
    elsif ( $in && $line =~ /^(\w.*)$/ ) {
        print OUT "### $1\n\n";
    }
    elsif ($in) {
        print OUT $line . "\n";
    }
}

system("vim", $file);
system("mutt", "-i", $file, "-s", "$project $release released!", 'fusioninventory-user@lists.alioth.debian.org',  )
