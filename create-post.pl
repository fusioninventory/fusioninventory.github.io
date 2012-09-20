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

die unless $title;
die if $title =~ /\ /;

my $datetime = DateTime->now;
my $file = sprintf( "tmp_news/%d/%02d/%02d/%s.mdwn",
        $datetime->year, $datetime->month, $datetime->day, $title );
make_path( dirname($file) );
open OUT, ">$file" or die;
print OUT "[[!meta  date=\"". $datetime->ymd."\"]]\n\n";

system("vim", $file);
