#!/usr/bin/perl
use strict;
use warnings;
use feature 'say';  # 启用 say 函数

sub average {
    if (@_ == 0) {return};
    my $count = @_;
    my $sum = total(@_);
    $sum/$count;
}

sub above_average {
    my $average = average(@_);
    my @list;
    foreach my $element (@_) {
        if ($element > $average){
            push @list, $element;
        }
    }
    @list
}

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




my @fred = above_average(1..10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";

