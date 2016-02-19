#!/usr/bin/perl
use strict;
use warnings;

my $answer;
print "> ";  ## set up prompt
my @entry = <>;  ## read in standard input


while ( @entry )  ## if there's an input...
{
  ## chomp $entry;  ## chomp off the return line \n
  ##  my @input = split " ", $entry, 2;  ## define $operator and $mod per entry
  mod_answer (@entry, $answer); 
  print "> ";
  @entry = <>
} 

sub mod_answer
{
  my $op = shift @entry;
  my $num= shift @entry;
  my $val = shift;
  if ( lc($op) eq "clear" ) { $answer = 0; }
  elsif ( lc($op) eq "plus" ) { $answer = $val + $num; }
  elsif ( lc($op) eq "minus" ) { $answer = $val - $num; }
  elsif ( lc($op) eq "times" ) { $answer = $val * $num; }
  elsif ( lc($op) eq "over" ) { $answer = $val / $num; }
  elsif ( lc($op) eq "equals" ) { print "= $answer\n"; }
  else { print "Invalid statement\n"; }
  return $answer;
}
  