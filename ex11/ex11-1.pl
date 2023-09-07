#!/usr/local/perl
use strict;
use warnings;

use Module::CoreList;

my %module = %{ $Module::CoreList::version{5.014} };

# print join(", ", keys %module) . "\n";

my $longest = 0;

foreach my $key (keys %module) {
    $longest = length($key) if length($key) > $longest;
}

foreach my $key (sort keys %module) {
    printf "%-${longest}s %s\n", $key, $module{$key};
}