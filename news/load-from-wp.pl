#!/usr/bin/perl

use strict;
use warnings;

use XML::Twig;

use Encode;


my $twig = XML::Twig->new(

    twig_handlers => {
        item => sub {
            next unless $_->first_child('wp:post_type')->text eq 'post';
            my $title = encode('utf8', $_->first_child('title')->text);
die unless $_->first_child('wp:post_date')->text =~ /(\d\d\d\d)-(\d\d)-(\d\d).*\s/;
my $dir = "$1/$2/$3";
system("mkdir", "-p", $dir);
my $filename = $title;
$filename =~ s/[^0-9\s\w\.\+]//g;
$filename =~ s/\s+/_/g;

print "$filename\n";

my $day = $_->first_child('wp:post_date')->text;
#$day =~ s/\s.*//;

open F, ">$dir/$filename.mdwn" or die;
print F "[[!meta  date=\"".$day."\"]]\n";
print F "# $title\n\n";
            my $content = encode('utf8', $_->first_child('content:encoded')->text);

#            print "\n\n\n\n\n\n\n\n\n\n\n\n----before\n$content\n\n";

            {
                local $/ = undef;
                $content =~ s/\s+<li>(.*?)<\/li>/* \1\n/gi;
                $content =~ s/\s+<h2>(.*?)<\/h2>/\n\n## \1\n/gi;
#                $content =~ s/<(ul|center)>/\n/gi;
                $content =~ s/<[\/]{0,1}(ul|center|en|)>/\n/gi;
                $content =~ s/&gt;/>/gi;
#                $content =~ s/<a\s+href=["']([^"]+)["']\s*>([^<]+)<\/a>/[$2]($1)/gi;
#                $content =~ s/<a\s+href=["']([^"]+)["']\s*(|title="([^"]+)")\s*>([^<]*)<\/a>/[$3.$4]($1)/gi;
                $content =~ s/\s+<li>/\n* /gi;
                $content =~ s/&nbsp;/\n/gi;

            }
            print F "$content\n";
          }
    }
);

$twig->parsefile(
  '/home/goneri/download/fusioninventory.wordpress.2012-08-22.xml');  # build it

