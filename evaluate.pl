#!/usr/bin/perl
use strict;
use warnings;

my $cash = 425665.2; # initialize cash
my $principal = 100000;
my $interest_rate = 7; # %
my $term = 20; # Years
my $total_paid = $principal * (1 + $interest_rate / 100) ** $term;

if ( $cash > (1.1 * $total_paid) )
{
  print "Approved.\n";
}
elsif ( $cash < $total_paid )
{
  print "Unacceptable.\n";
}
else 
{
  print "Marginal.\n";
}
