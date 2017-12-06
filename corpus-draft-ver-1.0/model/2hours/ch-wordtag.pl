#!/usr/bin/perl
use warnings;
use utf8;

#last updated: 14 Nov 2017
#written by Ye, AI Lab.,
#Okayama Prefectural University, Japan

#for changing some words and tags for the whole POS-tagged corpus
#How to run: perl ch-wordtag.pl <input-file-name> <delimeter> <w|t> <old-string> <new-string> 
#Here, 
# w = changing word, 
# t = changing tag
# 
# How to run:
# e.g. ./ch-wordtag.pl ./train6 "/" w ! EX-MARK | less -r
# e.g ./ch-wordtag.pl ./train6 "/" t JJ_IN IN > out

binmode STDIN,  ":utf8";
binmode STDOUT, ":utf8";

my $TagMarker=$ARGV[1]; # give command line parameter such as "\|", "\/" ...
my $word_or_tag=$ARGV[2];
my $old_string=$ARGV[3];
my $new_string=$ARGV[4];

#print "TagMarker: $TagMarker, word_or_tag: $word_or_tag, Old-string: $old_string, New-word: $new_string \n"; exit;

open(my $inputFILE, '<:encoding(UTF-8)', $ARGV[0])
  or die "Could not open file '$inputFILE' $!";

my $one_token; my $tmpLine=""; my $tmpLine2="";

   while($line = <$inputFILE>)
   {
      if ($line!~/^$/)
      {
         chomp ($line);
         my $originalLine = $line;
         #print $line, "\n"; exit;
            
         $line =~ s/\s+/ /g;
         $line =~ s/^\s+|\s+$//g;
         if ($word_or_tag eq "w" || $word_or_tag eq "t" || $word_or_tag eq "wt" || $word_or_tag eq "c")
         {
            $line =~ s/\|/ /g; #removing for compound word delimeter, actually for khPOS this line is not required and I used it for myPOS!
         }

         my @token = split('\s', $line);
         #print "\@tokens:\n"."@token\n"; 
         foreach $one_token(@token)
         {
            #print "one_token: $one_token\n"; exit; #for debugging
            my ($text, $tag) = split(/$TagMarker/, $one_token);

            if($word_or_tag eq "w")
            {
               if ($text eq $old_string)
               {
                  $text = $new_string;
               }
            }elsif($word_or_tag eq "t")
            {
               if ($tag eq $old_string)
               {
                  $tag = $new_string;
               }
            }
            #combine word and tag again  
            $tmpLine=$tmpLine.$text.$TagMarker.$tag." ";
         }
            #chomp($tmpLine);
            
                
               $tmpLine =~ s/^\s+|\s+$//g;
               print $tmpLine."\n";
            
              $tmpLine = "";
        }
    }

close(inputFILE);
