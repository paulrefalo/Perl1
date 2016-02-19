#!/usr/bin/perl
use strict;
use warnings;

my @first = qw(Can unlock secret);
my @second = qw(you the code?);

my @mixed = interleave_words ( scalar(@first), @first, @second, scalar(@second) );
print "Result:  @mixed\n";

sub interleave_words  ##  subroutine works for arrays of any length.  Arrays must be of the same length, though
{
  my @results;
  my $count = shift;  ## $count is set to the length of the first array
  my $check = pop;  ## $check is set to the length of the second array
  
  foreach my $index ( 0 .. $count-1 )       ## even and odd
  {
    $results[$index *2] = splice(@_, 0, 1);
    $results[$index *2 + 1] = splice(@_, $count - $index - 1, 1);
  }
    if ( $count != $check )  ## check to see if arrays are of same length
  {
    die "Second array not same size ($count) as the first\n";
  }
  return @results;
}