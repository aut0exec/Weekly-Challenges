#!/usr/bin/env perl

# Find all prime numbers less than 1000, which are also palindromes.
# Palindromic numbers are numbers whose digits are the same in reverse.
# For example, 313 is a palindromic prime, but 337 is not, even though 733 (337 reversed) is also prime.

use strict;
use warnings;

my @primes = ('2'); # 2 is already prime

# Find prime numbers.
# Create a list of numbers to test and then modulo with every 
# number up until that number. If we make it all the way through the 
# second loop, then the number is only divisble by itself
foreach my $num (3..1000)
{
	my $i;
	for ( $i=3; $i < $num; $i++)
	{
		if ( ($num % $i) == 0 or ($num % 2) == 0) { last; };		
	}
	# If number is only divisble by itself and is the same in reverse; palindrome!
	if ( $i eq $num && $num eq reverse($num)) { push (@primes, $num); }
}

foreach my $prime (@primes)
	{ print ("$prime is a prime palindrome!\n"); }
