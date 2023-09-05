#!/usr/bin/perl
use strict;
use warnings;

#print "PATH is $ENV{PATH}\n";
my $longest = 0;

foreach my $key (keys %ENV) {
    $longest = length($key) if length($key) > $longest;
}

foreach my $key (sort keys %ENV) {
    printf "%-${longest}s %s\n", $key, $ENV{$key};
}