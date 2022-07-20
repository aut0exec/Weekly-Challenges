#!/usr/bin/env perl

# Find all prime numbers less than 1000
# See if its reverse is also prime 

use strict;
use warnings;

my @primes = ('2'); # 2 is already prime
my $search_method = 'linear';

sub linear_search {
	my ($num, $array_primes) = @_;
	for my $i (0..@$array_primes-1)
	{
		if ($array_primes->[$i] eq reverse($num)) { return 1; }
	}
	
	return 0;
}

# Practice with this later?
sub binary_search {
	
	
	
}

#~ # Sum digits, nifty trick to do so
#~ $sum += $_ for split( //, $num);


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
	if ( $i eq $num ) { push (@primes, $num); }
}	

#print ("Prime numbers: @primes \n\n");

# Search through prime numbers to see which are palindromes
foreach my $prime (@primes)
{
	
	my $result;
	if ("$search_method" eq 'linear')
	{ $result = linear_search($prime, \@primes); }
	else
	{ $result = binary_search($prime, \@primes); }

	if ($result == 1)
	{ print ("$prime is a prime palindrome!\n"); }

}
