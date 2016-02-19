#!/usr/bin/perl
use strict;
use warnings;

my $answer = 0;

while ( print( "> " ) && defined( my $entry = <> ) )

{
  chomp $entry;
  my ($op, $num) = split " ", $entry, 2;
  $answer = mod_answer( $op, $num, $answer );
  print "After the subroutine the answer is $answer\n";
}






sub mod_answer {
  my $sub_op = shift @_;
  my $sub_num = shift @_;
  my $sub_answer = shift @_;

  print "We are in the subroutine mod_answer\n";
  print "The answer right now is $sub_answer\n";
  print "The operator is $sub_op and the number is $sub_num\n";
  
  return $answer;
}