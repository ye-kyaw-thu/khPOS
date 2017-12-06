#!/usr/bin/perl
#use strict;

my $inputFile1 = $ARGV[0]; #column file

open (col_FILE, $inputFile1) or die "Couldn't open input file $inputFile1!, $!";

foreach $line (<col_FILE>)
        {
		chomp($line);

		if($line ne "")
		{
                	
			print $line;
			print " ";
		}else
		{
			print "\n";
		}
	}

close (col_FILE);

