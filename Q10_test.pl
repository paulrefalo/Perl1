#!/usr/bin/perl
use strict;
use warnings;

## Test for scalars

my $scalar = 8;
my @array = qw(a b c d e f g h i);

#print $scalar;
#print @array;

my $three = 17 + 42 * @array;
print "$three\n";


__END__

LIST		print EXPRESSION
BOOLEAN		if ( EXPRESSION ) { print "Hello" }
SCALAR		17 + 42 * EXPRESSION
LIST		push @array, EXPRESSION
SCALAR		print reverse( "begin" . EXPRESSION . "end" )
SCALAR		while ( 0 + EXPRESSION )
LIST		foreach my $thing ( @array, EXPRESSION )