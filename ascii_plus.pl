#!/usr/bin/perl
use strict;
use warnings;

foreach my $chart_seed ( 32 .. 126 )
{
  printf "%3d %2x %4o %8b %1s\n", $chart_seed, $chart_seed, $chart_seed, $chart_seed, chr($chart_seed);
  $chart_seed += $chart_seed;
}
