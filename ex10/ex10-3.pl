#!/usr/bin/perl
use strict;
use warnings;

$ENV{ZERO}      = 0;
$ENV{EMPTY}     = '';
$ENV{UNDEFINED} = undef;

my $longest = 0;

foreach my $key (keys %ENV) {
    $longest = length($key) if length($key) > $longest;
}

foreach my $key (sort keys %ENV) {
    # printf "%-${longest}s %s\n", $key, $ENV{$key};
    # printf "%-${longest}s %s\n", $key, $ENV{$key} || "(undefined)";
    printf "%-${longest}s %s\n", $key, $ENV{$key} // "(undefined)";
    # printf "%-${longest}s %s\n", $key, 
    # defined $ENV{$key} ? $ENV{key} : "(undefined)";
}