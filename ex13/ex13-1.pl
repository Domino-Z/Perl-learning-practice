#!/usr/bin/perl
use strict;
use warnings;

print "Enter directory: ";
chomp(my $dir = <STDIN>);

if ($dir =~ /\A\s*\Z/) {
    chdir $dir or die "Cant't chdir to your home directory: $!";
} else {
    chdir $dir or die "Can't chdir to '$dir': $!";
}

my @files = <*>;
foreach (@files) {
    print "$_\n";
}