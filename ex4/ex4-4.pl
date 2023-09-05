#!/usr/bin/perl
use 5.012; # 使用state需要指定5.010以上的版本
use strict;
use warnings;

sub greet {
    state $previous_guest = ""; 

    my $guest_name = shift; # shift @_

    if ($previous_guest ne "") { # 字符串比较
        print "Hi $guest_name! $previous_guest was here before.\n";
    } else {
        print "Hi $guest_name! You are the first guest.\n";
    }

    $previous_guest = $guest_name; 
}

greet("Fred");
greet("Barney");
