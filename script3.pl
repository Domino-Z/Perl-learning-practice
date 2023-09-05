#!/usr/bin/perl
use strict;
use warnings;

my %family_name = (
    'fred'   => 'flintstone',
    'barney' => 'rubble',
);
foreach my $person (qw< barney fred >) {
    print "I've heard of $person $family_name{$person}.\n";
}