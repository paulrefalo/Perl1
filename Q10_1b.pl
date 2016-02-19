#!/usr/bin/perl
use strict;
use warnings;

my @prices = qw(1 2 3 4 5 6 7 8);
my @rev_prices = reverse ( @prices );
my $priciest = shift @rev_prices;
print "$priciest \n";
