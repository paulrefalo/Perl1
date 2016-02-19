#!/usr/bin/perl
use strict;
use warnings;

my @a = ('pirate', 'parrot', 'pearls');
my @b = ('Leisa', 'Sukhi');
print "\nThe first array before the While loop is:  @a\n";
print "While loop displays:  \n";
while (my $x = shift @a )
{
  print $x, "\n";
}
print "\nThe contents of the array after a While loop are:  @a\n";

print "\nThe second array before the Foreach loop is:  @b\n";
print "\nForeach loop displays:  \n";

foreach ( @b )
{
  print $_;
  print "\n";
}

print "\nThe contents of the array after a Foreach loop are:  @b\n";