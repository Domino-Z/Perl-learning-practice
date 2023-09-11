#!/usr/bin/perl
use strict;
use warnings;
use File::Copy;

if (@ARGV != 2) {
    die "Usage: perl $0 source target\n";
}

my ($source, $target) = @ARGV;

if (-e $source) {
    if (-e $target && -d $target) {
        # 如果目标是目录，将源文件移动到目标目录
        my $new_target = "$target/$source";
        move($source, $new_target) or die "Failed to move '$source' to '$new_target': $!\n";
    } else {
        # 否则，重命名源文件为目标文件
        move($source, $target) or die "Failed to rename '$source' to '$target': $!\n";
    }
} else {
    die "Source file '$source' does not exist.\n";
}
