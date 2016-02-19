#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $lines = <<'END_OF_REPORT';
 0.95   300   White Peaches
 1.45   120   California Avocados
10.50    10   Durien
 0.40  1500   Spartan Apples
END_OF_REPORT

my %sold = ('White Peaches' => 12, 'Rainier Cherries' => 20, 'Durien' => -1, 'Spartan Apples' => 24,
            'Huckleberries' => 66, 'Bananas' => 77, 'Star Fruit' => 88, 'Kiwis' => 104, 'Pomellos' => 3);  
my %inventory;

foreach my $line ( split "\n", $lines ) {
  my ($cost, $quantity, $item) = split " ", $line, 3;
  $inventory{$item} = $quantity;
  }
foreach my $sold_items (keys %sold) {
  unless ( exists $inventory{$sold_items} )
  {
    my $sold = $sold{$sold_items};
    warn "*** Sold $sold of $sold_items, which were not in inventory\n";
  }
}

print Dumper(%inventory);