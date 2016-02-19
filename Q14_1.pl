#!/usr/bin/perl
use strict;
use warnings;

my %hash = ( 'a' => 1, 'b' => 2, 'c' => 3 );
my @k = keys %hash;
my @v = values % hash;
print "@k\n";
print "@v\n";

my $guess;
&my_meals(fish => 2, chicken => 1, turkey => );

sub my_meals
{
  $guess = $_[0];
  my %arg = @_;
  print "fishy\n";
  print @_; print "\n";
  return $guess;
}