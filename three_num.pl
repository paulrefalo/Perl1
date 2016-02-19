

sub add_three_numbers {
die 'add three numbers requires thee values to be passed' unless @_ == 3;
my ($a,$b,$c) = @_;
return $a+$b+$c;
}