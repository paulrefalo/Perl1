#!/usr/bin/perl
use strict;
use warnings;

my $chart_seed = 31;

while ( $chart_seed++ < 126 )
{
  print "The ASCII chart value of $chart_seed is ", chr($chart_seed), ".\n";
}
