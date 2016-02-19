#!/usr/bin/perl
use strict;
use warnings;


print reverse( 12, 592, 2928) ;
print reverse( 9, 2, 4, 5, 10);
my $obj = 5;
$obj->say_hi();
print "\$obj is $obj\n";

sub reverse
{
  if ( @_ == 3 )
  {
    my $sum = ( (shift @_) + (shift @_) + (shift @_) );
    return "$sum\n";
  }
  else
  {
    die "The number of entered parameters is incorrect.\n";
  }
}

sub say_hi {
  print "\nHELLO\n";
  $_ = shift;
  return $_*10;
}