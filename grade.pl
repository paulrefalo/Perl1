#!/usr/bin/perl
use strict;
use warnings;

my %sold;
if ( @ARGV > 2 && shift eq "-s" )	## used to be -c
{
  #my $sales_file = shift;
  #my @saved_argv = @ARGV;
  #@ARGV = $sales_file;
  while ( defined( my $line = <> ) )
  {
    chomp $line;
    my ($quantity, $item) = split " ", $line, 2;
    $sold{$item} = $quantity;
  }
  #@ARGV = @saved_argv;
}
else
{
  die "Usage:  $0 -s sales_file inventory file...\n";  ## used to be -c
}


my $count = 0;
my (%item_cost, %inventory);
while ( defined( my $line = <> ) )
{
  $count++;
  next if $line =~ /price/i;
  chomp $line;
  my ($cost, $quantity, $item) = split ",", $line, 3;
  $item_cost{$item} = $cost;
  $inventory{$item} = $quantity;
   if ( $quantity < 0 )
   {
     print "Warning: Inventory item ", $item, " has a negative value at line ", $count, " in the input file\n";
     print "\n";
   }
}

#my %sold = ('White Peaches' => 12, 'Rainier Cherries' => 20,
 #            Durien         => -1, 'Spartan Apples'   => 24);  # One durien returned... too smelly

foreach my $item ( keys %sold )
{
  if ( exists $inventory{$item} )
  {
    $inventory{$item} -= $sold{$item};
  }
  else
  {
    warn "*** Sold $sold{$item} of $item, which were not in inventory\n";
  }
}
foreach my $item ( sort keys %item_cost )
{
  printf "%5.2f %6d %s\n", $item_cost{$item}, $inventory{$item}, $item;
}