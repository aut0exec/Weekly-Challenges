#!/usr/bin/env perl
#
# The Weekly Challenge - Week 176
#
# Write a script to find out all Reversible Numbers below 100.
# A number is said to be a reversible if sum of the number and its reverse had only odd digits.
#
# Output: 10, 12, 14, 16, 18, 21, 23, 25, 27,
# 30, 32, 34, 36, 41, 43, 45, 50, 52,
# 54, 61, 63, 70, 72, 81, 90

use strict;
use warnings;

foreach my $num (10..99)
{
	my @nums = split(//, $num);
	if ((($nums[0] + $nums[1]) % 2 == 1) and ($nums[0] + $nums[1] < 10))
	{
		print ("$num, ");
	}		
}
