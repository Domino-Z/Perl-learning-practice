#!/usr/bin/perl
use strict;
use warnings;

die "No files specified!\n" unless @ARGV;

foreach my $file (@ARGV){
    if (-r -w -o $file) {
    print "My directory is readable, wrightable, and excutable!\n";
    }
}

# if ( -w $file && -r _ && -o _); # 栈式