#!/usr/bin/perl
use strict;
use warnings;

my $lines = <<'END_OF_REPORT';
 0.95   300   White Peaches
 1.45   120   California Avocados
10.50    10   Durien
 0.40  1500   Spartan Apples
END_OF_REPORT

my %sold = ( 'White Peaches' => 12, 'Ranier Cherries' => 20,
             'Durien'        => -1, 'Spartan Apples'  => 24,
             'Blueberries'   => 99, 'Pomegranates'    => 12,
             'Raspberries'   => 50, 'Plums'           =>  1,  'Marionberries'     => 25);  #One durien returned...too smelly

foreach my $line ( split "\n", $lines )
{
  my ($cost, $quantity, $item) = split " ", $line, 3;
  if ( exists $sold{$item} )
  {
    $quantity -= $sold{$item};  
  }
  else
  {
    warn "Didn't sell any $item this time.\n";
  }
  delete $sold{$item}; ## remove item from Hash, then print it
  printf "%5.2f %6d %s\n", $cost, $quantity, $item;
}

foreach my $NA ( keys %sold )  ## examine Hash for any remaining items and print them
{
  print "***Sold $sold{$NA} of $NA, which were not in inventory.***\n";
}