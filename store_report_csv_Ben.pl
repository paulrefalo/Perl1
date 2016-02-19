#!/usr/bin/env perl 
use strict;
use warnings;

=pod

Many programs (like Microsoft Excel) can save their documents to CSV files (CSV stands for comma-separated value).

CSV files look like this:

Price,Quantity,Name
0.95,300,White Peaches
1.45,120,California Avocados
10.50,10,Durien
0.40,1500,Spartan Apples
1.50,400,Cherry Tomatoes

The first line is a header line--it tells us the layout of the rest of the file. Instead of separating data with white space, data is separated by commas.

To start your project, copy store_report.pl into a new file named store_report_csv.pl.

Next, modify store_report_csv.pl so it processes CSV files. Your program should ignore the first line (the header) and process the rest of the file.

Next, create a new file named store_report.csv that contains inventory data.

Finally, modify your program so that if it encounters an item with a negative quantity, it prints a warning "Inventory is negative at line n" (where n is the number of the line with the negative quantity in the inventory file).

When you finish, hand in your store_report_csv.pl, store_report.csv, and sales_report.sales

=cut



=head1 csv2aoh

  @lines = csv2aoh($filename);
  
Given a csv file, convert all lines in to an array of hasherefs by leveraging the first line as keys

=cut

sub csv2aoh {
  my $file = shift;
  open my $fh, '<', $file or die qq{Failed to open $file for reading};
  my @lines = map{chomp;[split/,\s*/]} <$fh>; # convert entire file to array of arrayrefs
  close $fh;
  my $keys = shift @lines; # shift off the keys so we can use them for the array
  map{ my ($val,%h) = $_; 
       $h{$_} = shift @$val for @$keys;
       \%h;
     } @lines;
}

open my $fh, '<', 'sales_report.sales' or die qq{Failed to open sales file for reading};
my %sold = map{s/^\s+//;s/\s+$//;reverse split /\s+/, $_, 2} <$fh>;
close $fh;
use Data::Dumper;
die Dumper(\%sold);

foreach my $line ( csv2aoh('store_report.csv') ) {
  if ( exists $sold{$line->{Name}} ) {
    $line->{Quantity} -= delete $sold{$line->{Name}};
  }
  else {
    warn "Didn't sell any $line->{Name} this time\n";
  }
  printf "%5.2f %6d %s\n", map{$line->{$_}} qw{Price Quantity Name};
}
printf qq{*** Sold %d of %s, which were not in inventory\n}, $sold{$_}, $_ for keys %sold;
