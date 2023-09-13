#!/usr/bin/perl
use strict;
use warnings;

foreach ( glob( '*' )) {
    my( $atime, $mtime ) = (stat)[8,9];
    printf "%-20s %10d %10d\n", $_, $atime, $mtime;
}

foreach my $file ( glob( '*' )) {
    my( $atime, $mtime ) = (stat $file)[8,9];
    printf "%-20s %10d %10d\n", $file, $atime, $mtime;
}
    #  For Mac
    #  The information displayed is obtained by calling lstat(2) with the given
    #  argument and evaluating the returned structure.  The default format
    #  displays the st_dev, st_ino, st_mode, st_nlink, st_uid, st_gid, st_rdev,
    #  st_size, st_atime, st_mtime, st_ctime, st_birthtime, st_blksize,
    #  st_blocks, and st_flags fields, in that order.