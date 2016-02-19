#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

#	Should get the same output from these
#   	./store_report.pl
#	./store_report_sorted.pl "White Peaches" 12 "Rainier Cherries" 20 Durien -1 "Spartan Apples" 24

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
  $item_cost{$item} = $cost;
  $inventory{$item} = $quantity;
}

my %sold;
if ( @ARGV )
{
  %sold = @ARGV;
}

print "@ARGV\n";

print Dumper %sold;

foreach my $item ( keys %sold )
{
  if ( exists $inventory{$item} )
  {
    $inventory{$item} -= $sold{$item};
  }
  else
  {
    warn "*** Sold $sold{$item} of $item, which were not in inventory.***\n";
  }
}

foreach my $item ( sort keys %item_cost )
{
  if ( $inventory{$item} < 0 )
  {
    warn "*** We are out of $item at this time.***\n";
  }
  else
  {
    printf "%5.2f %-d \t%s\n", $item_cost{$item}, $inventory{$item}, $item;
  }
}