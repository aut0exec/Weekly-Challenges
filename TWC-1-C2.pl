#!/usr/bin/env perl

# Solve the FizzBuzz problem and print the numbers 1 through 20. However, any number divisible by 3 should be replaced by the word ‘fizz’ and any divisible by 5 by the word ‘buzz’. Those numbers that are both divisible by 3 and 5 become ‘fizzbuzz’.

use strict;
use warnings;

foreach my $num (1..30)
{
	if ( $num % 3 == 0 and $num % 5 == 0) { print ("fizzbuzz\n"); }
	elsif ( $num % 3 == 0 ) { print ("fizz\n"); }
	elsif ( $num % 5 == 0) { print ("buzz\n"); }
	else { print "$num\n"; }	
}	
