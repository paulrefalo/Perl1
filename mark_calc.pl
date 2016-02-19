#!/usr/bin/perl
use warnings;
use strict;

my @entry;
my $accumulator = 0;
#my $answer;
sub mod_answer
{
my $op =  shift;
my $num = shift;
my $val = shift;
if ( lc($op) eq "clear" ) { $accumulator = 0; }
elsif ( lc($op) eq "equals" ) { $accumulator = $val; }
elsif ( lc($op) eq "plus" ) { $accumulator = $val + $num; }
elsif ( lc($op) eq "minus" ) { $accumulator = $val - $num; }
elsif ( lc($op) eq "times" ) { $accumulator = $val * $num; }
elsif ( lc($op) eq "over" ) { $accumulator = $val / $num; }
else { print "invalid statement\n"; }
print "ok\n";
return $accumulator;
}

#my (%project);

while ( print "> " && defined( my $line = <> ) )  {
  chomp $line; 
  my ($one, $two) = split /\s/, $line;

  my $answer = mod_answer($one, $two, $accumulator);

  print $answer;
}