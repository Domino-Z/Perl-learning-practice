#!/usr/bin/perl
use strict;
use warnings;

my @welcomed_guests; 

sub greet {
    my $guest_name = shift; # shift(@_)

    if (@welcomed_guests) {
        print "Hi $guest_name! ";
        print "I've seen: @welcomed_guests\n";
    } else {
        print "Hi $guest_name! You are the first guest.\n";
    }

    push @welcomed_guests, $guest_name; 
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");
