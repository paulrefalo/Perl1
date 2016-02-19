#!/usr/bin/perl
use strict;
use warnings;

my $principal = 100000;
my $interest_rate = 7; # %
my $term = 20; # Years
my $total_paid = $principal * (1 + $interest_rate / 100) ** $term;

print "Value of principal + interest after ", $term, " years = ", $total_paid, "\n";