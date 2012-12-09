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

my $title = shift;

if (!$title || $title =~ /\ /) {
    print "Usage: ./create-post.pl Post_title_without_space\n";
    exit(1);
}

my $datetime = DateTime->now;
my $file = sprintf( "news/%d/%02d/%02d/%s.mdwn",
        $datetime->year, $datetime->month, $datetime->day, $title );
make_path( dirname($file) );
open OUT, ">$file" or die;
print OUT "[[!meta  date=\"". $datetime->ymd."\"]]\n\n";

system("vim", $file);
