#!/usr/bin/perl
use strict;
use warnings;

foreach ( glob( '.* *' )) {
    my $dest = readlink $_;
    print "$_ -> $dest\n" if defined $dest;
}