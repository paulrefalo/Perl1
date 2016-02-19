#!/usr/bin/perl
use strict;
use warnings;

my $accumulator;
print "> ";  ## set up prompt
my $entry = <>;  ## read in standard input

while ( $entry )  ## if there's an input...
{
  chomp $entry;  ## chomp off the return line \n
  my ($op, $num) = split " ", $entry, 2;  ## define $op and $num per entry

  if ( lc($op) eq "clear" ) { $accumulator = 0; print "OK\n> "; }
  elsif ( lc($op) eq "plus" ) { $accumulator = $accumulator + $num; print "OK\n> ";}
  elsif ( lc($op) eq "minus" ) { $accumulator = $accumulator - $num; print "OK\n> ";}
  elsif ( lc($op) eq "times" ) { $accumulator = $accumulator * $num; print "OK\n> ";}
  elsif ( lc($op) eq "over" ) { $accumulator = $accumulator / $num; print "OK\n> ";}
  elsif ( lc($op) eq "equals" ) 
  { 
    if ( defined($accumulator) )
    {print " = $accumulator\n"; print "OK\n> ";}
    else
    {print " (undefined)\n"; print "OK\n> ";}
  }
  else { print "Invalid statement\n> "; }
  $entry = <>  ## give the user another entry
} 