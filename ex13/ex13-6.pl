#!/usr/bin/perl
use strict;
use warnings;
use File::Copy;

my ($source, $target) = @ARGV;

if (@ARGV != 2) {
    die "Usage:perl $0 source target\n";
}

# 创建符号链接（如果系统支持）
if (eval { symlink("", ""); 1 }) {
    if (-e $source) {
        if (symlink($source, $target)) {
            print "Created a symbolic link from '$source' to '$target'.\n";
        } else {
            warn "Failed to create a symbolic link from '$source' to '$target': $!\n";
        }
    } else {
        warn "Source file '$source' does not exist.\n";
    }
} else {
    print "Symbolic links are not supported on this system.\n";
    print "This program would create a symbolic link from '$source' to '$target'.\n";
}
