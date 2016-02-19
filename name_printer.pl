#!/usr/bin/perl
use strict;
use warnings;

my $boss_first_name = "Penelope";
my $boss_last_name = "Creighton-Ward";
my $butler_first_name = "Aloysius";
my $butler_last_name = "Parker";

my $field_width = 15;

print '|', ' 'x$field_width, '|', ' 'x$field_width, "|\n"; 

my $boss_name_length;
$boss_name_length = length ( $boss_first_name.$boss_last_name );
my $boss_fn_length;
$boss_fn_length = length ( $boss_first_name );
my $boss_ln_length;
$boss_ln_length = length ( $boss_last_name );

my $butler_name_length;
$butler_name_length = length ( $butler_first_name.$butler_last_name );
my $butler_fn_length;
$butler_fn_length = length ( $butler_first_name );
my $butler_ln_length;
$butler_ln_length = length ( $butler_last_name );

# check to see if any single name, first or last, is greater than the field width
if ( $boss_fn_length > $field_width || $boss_ln_length > $field_width || $butler_fn_length > $field_width || $butler_ln_length > $field_width )
{
  print "No names, first or last, may be longer than ", $field_width, " letters in length.\n"
}

# both boss and butler have names that fit
elsif (( $boss_name_length <= ($field_width - 1) ) && ($butler_name_length <= ($field_width - 1) ))
{
  print '|', $boss_first_name, ' ', $boss_last_name, ' 'x( ($field_width - 1) - $boss_name_length ), '|',
             $butler_first_name, ' ', $butler_last_name, ' 'x( ($field_width - 1) - $butler_name_length ), '|', "\n",
             '|', ' 'x$field_width, '|', ' 'x$field_width, "|\n"
}
# boss's name is too long, but butler's fits
elsif (( $boss_name_length >= $field_width ) && ( $butler_name_length <= ($field_width - 1) ))
{
  print '|', $boss_first_name, ' 'x( $field_width - $boss_fn_length ), '|',
             $butler_first_name, ' ', $butler_last_name, ' 'x( ($field_width - 1) - $butler_name_length ), '|', "\n",
             '|', $boss_last_name, ' 'x( $field_width - $boss_ln_length ), '|', ' 'x$field_width, "|\n"
}

# boss's name fits, but butler's is too long
elsif (( $boss_name_length <= ($field_width - 1) ) && ( $butler_name_length >= $field_width ))
{
  print '|', $boss_first_name, ' ', $boss_last_name, ' 'x( ($field_width - 1) - $boss_name_length ), '|',
             $butler_first_name, ' 'x( $field_width - $butler_fn_length ), '|', "\n",
             '|', ' 'x$field_width, '|', $butler_last_name, ' 'x( $field_width - $butler_ln_length), "|\n"
}

# neither the boss's nor the butler's name fits
elsif (( $boss_name_length > $field_width ) && ( $butler_name_length > $field_width ))
{
  print '|', $boss_first_name, ' 'x( $field_width - $boss_fn_length ), '|',
             $butler_first_name, ' 'x( $field_width - $butler_fn_length ), '|', "\n",
             '|', $boss_last_name, ' 'x( $field_width - $boss_ln_length ), '|', 
             $butler_last_name, ' 'x( $field_width - $butler_ln_length), "|\n"
}

else
{
  print "This shouldn't happen!\n";
}  