#!/usr/bin/perl
use File::Basename;
use File::Spec;

my ($source, $dest) = @ARGV;

if (-d $dest) {
    my($source, $dest) = @ARGV;
    $dest = File::Sepc->catfile($dest, $basename);
}

rename $source, $dest
  or die "Can't rename '$source' to '$dest': $! \n"