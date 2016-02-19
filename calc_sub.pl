#!/usr/bin/perl
use strict;
use warnings;

my $entry;
my $accumulator;
my $mode = 0;
print "> ";  ## set up prompt

if ( @ARGV > 0 ) {$mode = 1;}  ##  if file input use alt formatting

$entry = <>;  ## read in standard input


while ( $entry )  ## if there's an input...
{
  chomp $entry;  ## chomp off the return line \n
  my ($op, $num) = split " ", $entry, 2;  ## define $op and $num per entry
  
  if ( lc($op) eq "clear" ) { if ( $mode == 1) {print "$op\n";} &clear_calc( $accumulator, $num); }
  elsif ( lc($op) eq "plus" ) { if ( $mode == 1 ) {print "$op $num\n";} &plus_calc( $accumulator, $num); }
  elsif ( lc($op) eq "minus" ) { if ( $mode == 1 ) {print "$op $num\n";} &minus_calc( $accumulator, $num); }
  elsif ( lc($op) eq "times" ) { if ( $mode == 1 ) {print "$op $num\n";} &times_calc( $accumulator, $num); }
  elsif ( lc($op) eq "over" ) { if ( $mode == 1 ) {print "$op $num\n";} &over_calc( $accumulator, $num); }
  elsif ( lc($op) eq "equals" ) { if ( $mode == 1 ) {print "$op\n";} &equals_calc( $accumulator, $num); }
  else { if ( $mode == 1 ) {print "$op\n";} print "Invalid statement\n> "; if ($mode == 1) {print "\n";} }
  $entry = <>
} 

sub clear_calc
{
  $accumulator = 0;
  print "OK\n> ";
  return $accumulator;
}

sub plus_calc
{
  $accumulator = $_[0];
  my $num = $_[1];
  $accumulator = $accumulator + $num;
  print "OK\n> ";
  return $accumulator;
}

sub minus_calc
{
  $accumulator = $_[0];
  my $num = $_[1];
  $accumulator = $accumulator - $num;
  print "OK\n> ";
  return $accumulator;
}

sub times_calc
{
  $accumulator = $_[0];
  my $num = $_[1];
  $accumulator = $accumulator * $num;
  print "OK\n> ";
  return $accumulator;
}

sub over_calc
{
  $accumulator = $_[0];
  my $num = $_[1];
  $accumulator = $accumulator / $num;
  print "OK\n> ";
  return $accumulator;
}

sub equals_calc
{
  if ( defined($accumulator) )
  {print " = $accumulator\n"; print "OK\n> ";}
  else
  {print " (undefined)\n"; $accumulator = 0; print "OK\n> ";}
  return $accumulator;
}