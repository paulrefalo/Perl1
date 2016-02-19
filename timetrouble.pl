#!/usr/bin/perl
use strict;
use warnings;

my $time = localtime();
my @tt = localtime();
print "@tt \n";
print "$time \n";

my $sec = $tt[0];
my $yr = ( $tt[5] + 1900 );

print "Sec is $sec and year is $yr.\n";

my $att = substr $time, 0, 16;
print "$att \n";
