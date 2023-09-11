#!/usr/bin/perl
use strict;
use warnings;
use File::Basename;
use File::Spec;

my $symlink = $ARGV[0] eq '-s';
shift @ARGV if $symlink;

my ($source, $dest) = @ARGV;
if (-d $dest) {
    my $basename = basename $source;
    $dest = File::Spec->catfile($dest, $basename);
}

if ($symlink) {
    symlink $source, $dest
      or die "Cant't make soft link from '$source' to '$dest': $!\n";
} else {
    link $source, $dest
      or die "Can't make hard link from '$source' to '$dest': $!\n";
}

link $source, $dest
  or die "Can't link '$source' to '$dest':$!\n";