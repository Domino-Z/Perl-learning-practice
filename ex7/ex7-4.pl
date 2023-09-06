#!/usr/bin/perl
use strict;
use warnings;

while (my $line = <STDIN>) {
    if ($line =~ /^[A-Z]+/) {
        # /[A-Z][a-z]+/
        print $line;
    }
}