#!/usr/bin/perl
use strict;
use warnings;
use Data::Dumper;

my $text = <<"END_OF_TEXT";
Love, love me do.
You know I love you,
Ill always be true,
So please, love me do.
Whoa, love me do.

Love, love me do.
You know I love you,
Ill always be true,
So please, love me do.
Whoa, love me do.

Someone to love,
Somebody new.
Someone to love,
Someone like you.

Love, love me do.
You know I love you,
Ill always be true,
So please, love me do.
Whoa, love me do.

Love love me do.
You know I love you,
Ill always be true,
So please, love me do.
Whoa, love me do.
Yeah, love me do. 
Whoa, oh, love me do
END_OF_TEXT


my (@words) = split /\W+/, lc $text;
my %count;
for my $word ( @words ) {
$count{$word}++ ;
}

print "'love' occurs $count{love} times\n";

print "Here's what is in the hash \%count right now:\n\n";
print Dumper %count;

__END__
my %count;  
foreach my $line ( split "\n", $text )
{
  foreach my $words ( split " ", $line )
  {
    # my $word = "\L$words";			# this \L in qq yields 19 'love' but doesn't count 'love,'
    # print "$word\t";
    my $word = lc (substr ( $words, 0, 4 ));
    $count{($word)}++;
  }
}
