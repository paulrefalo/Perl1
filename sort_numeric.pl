#!/usr/bin/perl
use strict;
use warnings;

my $pet = "Sukhi";
my @numbers;
foreach my $x ( 1 .. 10 )
{
  push @numbers, int(rand 1000);
  push @numbers, $pet;
}
foreach my $number ( sort { $a <=> $b } @numbers )
{
  print "$number\n";
}
