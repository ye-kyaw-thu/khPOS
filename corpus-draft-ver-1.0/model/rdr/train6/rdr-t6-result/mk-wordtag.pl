#!/usr/bin/perl
use warnings;
#use Data::Dumper;
use utf8;

#last updated: 11 Oct 2016
#written by Ye, AI Lab.,
#Okayama Prefectural University, Japan
#How to run: perl mk-wordtag.pl <input-file-name> <delimeter> <w|t|wt|c> 
#Here, w=print word only, t=print tag only, wt=print both word and tag, c=print unalign word and tag paris
#e.g. ./mk-wordtag.pl ./kh-pos.all.f2.utf8 "\/" w | less -r
#e.g ./mk-wordtag.pl ./kh-pos.all.f2.utf8 "\/" c

binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";

my $TagMarker=$ARGV[1]; # give command line parameter such as "\|", "\/" ...
my $word_or_tag=$ARGV[2];

open(my $inputFILE, '<:encoding(UTF-8)', $ARGV[0])
  or die "Could not open file '$inputFILE' $!";

my $one_token; my $tmpLine=""; my $tmpLine2="";

    while($line = <$inputFILE>)
    {
        if ($line!~/^$/)
        {
            chomp ($line);
            my $originalLine = $line;
            #print $line, "\n";
            
            $line=~s/\s+/ /g;
            $line=~ s/^\s+|\s+$//g;
            my @token = split('\s', $line);
            #print "\@tokens:\n"."@token\n"; 
            foreach $one_token(@token)
            {
               #print "one_token: $one_token\n";
               my ($text, $tag) = split(/$TagMarker/, $one_token);
               if($word_or_tag eq "w")
               {
                   $tmpLine = $tmpLine.$text." ";
               }elsif($word_or_tag eq "t")
               {
                   $tmpLine = $tmpLine.$tag." ";
               }elsif($word_or_tag eq "wt" || $word_or_tag eq "c")
               {
                   $tmpLine = $tmpLine.$text." ";
                   $tmpLine2 = $tmpLine2.$tag." ";
               }
            }
            #chomp($tmpLine);
            if ($word_or_tag eq "w" || $word_or_tag eq "t")
            {
                $tmpLine=~ s/^\s+|\s+$//g;
                print $tmpLine."\n";
            }elsif ($word_or_tag eq "wt")
            {
                
                $tmpLine=~ s/^\s+|\s+$//g;
                $tmpLine2=~ s/^\s+|\s+$//g;
                print $tmpLine."\n"; print $tmpLine2."\n";
            }elsif ($word_or_tag eq "c")
            {
                $tmpLine=~ s/^\s+|\s+$//g;
                $tmpLine2=~ s/^\s+|\s+$//g;
                my $word_count = split / /,$tmpLine;
                my $tag_count = split / /,$tmpLine2;

                if ($word_count != $tag_count)
                { 
                    print "$originalLine\n";
                    print "$word_count: $tag_count\n";
                    print $tmpLine."\n"; print $tmpLine2."\n";
                }
            
             }
            $tmpLine = ""; $tmpLine2 = "";
        }
    }

close(inputFILE);
