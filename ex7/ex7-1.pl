#!/usr/bin/perl
use strict;
use warnings;

while (my $line = <STDIN>) {
    if ($line =~ /fred/){
        print $line;
    }
}

# perl ex7-1.pl < story.txt
