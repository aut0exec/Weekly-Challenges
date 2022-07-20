#!/usr/bin/env perl

# Write a program that will read from a dictionary and find 2- to 8-letter words that can be “spelled” in hexadecimal, with the addition of the following letter substitutions:
# o ⟶ 0 (e.g., 0xf00d = “food”)
# l ⟶ 1
# i ⟶ 1
# s ⟶ 5
# t ⟶ 7

use strict;
use warnings;

my $file = 'data/dictionary.txt';

open(FH, '<', $file) or die "Couldn't open $file : $! \n";

while (<FH>) 
{
	chomp ($_);
	my $word = lc("$_");
	
	if ( $word =~ /[ghjkmnpqru-z]+/g or length($word) > 8 or length($word) < 2)
		{next;}

	$word =~ tr /olist/01157/;

	print ("Hexified version of $_ is: 0x$word \n");
	
	#~ foreach my $letter ( split(//, $word))
	#~ {
		#~ print ("Letter is: $letter \n");
	#~ }
}

close (FH);
