#!/user/bin/perl -w

@people = qw( fred barney betty );
print "@people\n";

@sorted = sort @people;
print "@sorted\n";

$number = 42 + @people;
print "$number\n";

chomp(@lines = <STDIN>);