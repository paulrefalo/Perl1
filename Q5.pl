#!/usr/bin/perl
use strict;
use warnings;

my $name1;
my $name2;

$name1 = 'Orange';
$name2 = 'orange';

my $name1_lc = lc ( $name1 );
my $name2_lc = lc ( $name2 );

if ( $name1_lc eq $name2_lc )
{
  print "The names are the same\n";
}
else
{
  print "The names are not the same.\n";
}  


