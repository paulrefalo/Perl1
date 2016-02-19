#!/usr/bin/perl
use strict;
use warnings;

init();

sub init
{
  my $time = localtime();
  my $trunc_time = substr $time, 0, 16;
  foreach my $chart_seed ( 32 .. 126 )
  {
    print "$trunc_time ";
    printf "%3d %2x %4o %8b %1s\n", $chart_seed, $chart_seed, $chart_seed, $chart_seed, chr($chart_seed);
    $chart_seed++;
  }
  return
}


