#!/usr/bin/perl
use strict;
use warnings;

my $name = "Charles Francis Xavier";
my @names = split ' ', $name;
my $first_name = shift @names;
my $last_name = pop @names;
my $middle_name;
my @middle_letters;
my $middle_init;

if (@names)   #array not empty, there IS a middle name or initial
{
  $middle_name = shift @names;
  @middle_letters = split '', $middle_name;
  $middle_init = shift @middle_letters;
  print "$first_name $middle_init. $last_name\n"
}
else  #array is empty, there is NO middle name or initial
{
  print "$first_name X $last_name\n"
}

$name = "Hiram K. Hackenbacker";
@names = split ' ', $name;
$first_name = shift @names;
$last_name = pop @names;
if (@names)   #array not empty, there IS a middle name or initial
{
  $middle_name = shift @names;
  @middle_letters = split '', $middle_name;
  $middle_init = shift @middle_letters;
  print "$first_name $middle_init. $last_name\n"
}
else  #array is empty, there is NO middle name or initial
{
  print "$first_name X $last_name\n"
}

$name = "James Moriarty";
@names = split ' ', $name;
$first_name = shift @names;
$last_name = pop @names;
if (@names)   #array not empty, there IS a middle name or initial
{
  $middle_name = shift @names;
  @middle_letters = split '', $middle_name;
  $middle_init = shift @middle_letters;
  print "$first_name $middle_init. $last_name\n"
}
else  #array is empty, there is NO middle name or initial
{
  print "$first_name X $last_name\n"
}

$name = "Samuel Finley Breese Morse";
@names = split ' ', $name;
$first_name = shift @names;
$last_name = pop @names;
if (@names)   #array not empty, there IS a middle name or initial
{
  $middle_name = shift @names;
  @middle_letters = split '', $middle_name;
  $middle_init = shift @middle_letters;
  print "$first_name $middle_init. $last_name\n"
}
else  #array is empty, there is NO middle name or initial
{
  print "$first_name X $last_name\n"
}
