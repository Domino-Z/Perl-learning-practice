#!/usr/bin/perl
use strict;
use warnings;
use feature 'say';  # 启用 say 函数
sub total {
    my $sum = 0;
    my @numbers;
    foreach my $number ( @_ ) {
        push @numbers, $number;
        $sum += $number;
    }
    say "The sum of (@numbers) is $sum";
    return $sum;
}

my @fred = qw{ 1 3 5 7 9 };
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";

print "Enter some numbers on separate lines: ";  
my $user_total = total(<STDIN>); 
print "The total of those numbers is $user_total.\n";