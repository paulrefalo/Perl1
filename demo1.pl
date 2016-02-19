#!/usr/bin/perl
use strict;
use warnings;

my $lines = <<'END_OF_REPORT';
 0.95   300   White Peaches
 1.45   120   California Avocados
10.50    10   Durien
 0.40  1500   Spartan Apples
 1.50   400   Cherry Tomatoes
END_OF_REPORT

my (%item_cost, %inventory);
foreach my $line ( split "\n", $lines )
{
  my ($cost, $quantity, $item) = split " ", $line, 3;
  $item_cost{$item} = $cost; #{peaches => .95, avocado => 1.45, durien => 10.50, apples => .40, tomatoes => 1.50}
  $inventory{$item} = $quantity; #{peaches => 300, avocado => 120, durien => 10, apples => 1500, tomatoes => 400}
}

my %sold;
if (@ARGV >= 1) {
  %sold = ($ARGV[0] => $ARGV[1], $ARGV[2] => $ARGV[3],
             $ARGV[4]         => $ARGV[5], $ARGV[6]   => $ARGV[7]); }           
else {  
  %sold = ('White Peaches' => 12, 'Rainier Cherries' => 20,
             Durien         => -1, 'Spartan Apples'   => 24); }

foreach my $item ( keys %sold ) 
{
  if ( exists $inventory{$item} ) #checks keys in %inventory
  {
    $inventory{$item} -= $sold{$item}; #if the item exists in inventory value of sold is subtracted
    if ($inventory{$item} < 0) {warn "ERROR: Inventory for $item is below 0!!!\n";}
  }
  else #item is present in %sold but not in %inventory
  {
    warn "*** Sold $sold{$item} of $item, which were not in inventory\n";
  }
}

foreach my $item ( sort keys %item_cost ) #becomes {cal av, cher tom, durien, spar ap, whit peach}
{
  printf "%5.2f %6d %s\n", $item_cost{$item}, $inventory{$item}, $item;
}