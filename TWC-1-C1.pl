#!/usr/bin/env perl

# Write a script to replace the character ‘e’ with ‘E’ in the string ‘Perl Weekly Challenge’. Also print the number of times the character ‘e’ is found in the string.

use strict;
use warnings;

my $string='Perl Weekly Challenge';

$string =~ tr /e/E/;

print ("New string is: $string \n");
