#!/usr/bin/perl
use strict;
use warnings;

my $lines = <<'END_OF_REPORT';
 0.95   300   White Peaches
 1.45   120   California Avocados
10.50    10   Durien
 0.40  1500   Spartan Apples
END_OF_REPORT
  
my %sold = ('White Peaches' => 12, 'Ranier Cherries' => 20, 'Durien' => -1, 'Spartan Apples' => 24); 
#One Durien returned... too smelly	

foreach my $line ( split "\n", $lines )
{
  my ($cost, $quantity, $item) = split " ", $line, 3;
  if ( exists $sold{$item} )
  {
  	$quantity -= $sold{$item}; # $quantity = $quantity - $sold
  }
  else
  {
  warn "Didn't sell any $item this time\n";
  }
  printf "%5.2f %6d %s\n", $cost, $quantity, $item;
}

#take each $item as it comes down through the below foreach loop and capture in a list or an array:
#1 approach:

#foreach my $line ( split "\n", $lines )
#{
#  my ($cost, $quantity, $item) = split " ", $line, 3;
#  my @item = $item; #puts each $item into an array, in turn.
#  print "@item\n";  #to check value/s in array
#}
#...seems to overwrite @item each time with a new value

#or:

foreach my $item ( keys %sold )
{
  print "*** Sold $sold{$item} of $item, which were not in inventory\n";
}
#...same result as above.


#the keys() portion is something like:

#foreach my $sold ( keys %sold )
#{
	#print $sold - to see what ends up in $sold
	#something to compare each hash value, one at a time, to the entire set of $items (once that set is created somehow).  Use index?
#}