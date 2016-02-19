#!/usr/bin/perl
use strict;
use warnings;

my $count = 0;
foreach my $argument ( @ARGV )
{
  print '$ARGV[', $count++, '] = ', $argument, "\n";
}