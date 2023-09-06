#!/usr/bin/perl
use strict;
use warnings;

while (my $line = <STDIN>) {
    if ($line =~ /\./) { 
        # /[.]/
        print $line;
    }
}