#!/usr/bin/perl
use strict;
use warnings;

print "Plase enter a string: ";
chomp(my $string = <STDIN>);
print "Plase enter a substring: ";
chomp(my $substring = <STDIN>);

my @places;
for (my $pos = -1;;){
    $pos = index($string, $substring, $pos + 1);
    last if $pos == -1;
    push @places, $pos;
}

print "Location of '$substring' in '$string' were: @places\n"; 