#!/usr/bin/perl
use strict;
use warnings;

# Grocery store inventory:
my $lines = <<'END_OF_REPORT';
0.95  300   Peaches
1.45  120   Avocados
5.50   10   Durien
0.40  700   Apples
END_OF_REPORT

my ($line1, $line2, $line3, $line4) = split "\n", $lines;
 
my $substr = "es";

# Line 1
if ( (index $line1, $substr) > 0 ) 
{
  my ($cost, $quantity, $item) = split " ", $line1;
  print "Total value of $item on hand = \$", $cost * $quantity, "\n";
}
# Line 2
if ( (index $line2, $substr) > 0 ) 
{
  my ($cost, $quantity, $item) = split " ", $line2;
  print "Total value of $item on hand = \$", $cost * $quantity, "\n";
}
# Line 3
if ( (index $line3, $substr) > 0 ) 
{
  my ($cost, $quantity, $item) = split " ", $line3;
  print "Total value of $item on hand = \$", $cost * $quantity, "\n";
}
# Line 4
if ( (index $line4, $substr) > 0 ) 
{
  my ($cost, $quantity, $item) = split " ", $line4;
  print "Total value of $item on hand = \$", $cost * $quantity, "\n";
}

