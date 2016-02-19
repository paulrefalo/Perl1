#!/usr/bin/perl
use strict;
use warnings;

my (%count, %cost);
$count{'ants'}        = 47_000;
$count{'fleas'}       = 240_000;
$count{'beetles'}     = 520;
$count{'fruit flies'} = 1_500_000;

$cost{'ants'}        = 0.10;
$cost{'fleas'}       = 0.04;
$cost{'beetles'}     = 0.02;
$cost{'fruit flies'} = 0.001;

foreach my $insect ( keys %count )
{
  print "We have $count{$insect} of $insect on hand at \$$cost{$insect} each.\n";
}

