#!/usr/bin/perl
use strict;
use warnings;

## run directly

my $lines = <<'END_OF_REPORT';
 0.95   300   White Peaches
 1.45   120   California Avocados
10.50    10   Durien
 0.40  1500   Spartan Apples
END_OF_REPORT

my %sold = ('White Peaches' => 12, 'Rainier Cherries' => 20,
             Durien         => -1, 'Spartan Apples'   => 24,
            'Blue Cherries' => 32,  Oranges           => 5,
            'Red Peaches'   => 3,  'Rotten Apples'    => 450,
            'Green Lemons'  => -1);
foreach my $line ( split "\n", $lines )
{
  my ($cost, $quantity, $item) = split " ", $line, 3;
  if ( exists $sold{$item} )
  {
    $quantity -= $sold{$item};
    delete $sold{$item};
  }
  else
  {
    warn "Didn't sell any $item this time\n";
  }
  printf "%5.2f %6d %s\n", $cost, $quantity, $item;
}

foreach my $item ( keys %sold )
{
  print "*** Sold $sold{$item} of $item, which were not in inventory\n";
}