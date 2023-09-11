#!/usr/bin/perl
use strict;
use warnings;

# 指定要删除的文件
if (@ARGV == 0) {
    die "Usage: perl $0 file1 file2 file3 ...\n";
}

# 判断文件是否存在后，执行删除操作
foreach my $file (@ARGV) {
    if (-e $file) {
        unlink $file or warn "Failed to delete '$file': $!\n";
    } else {
        warn "File '$file' does not exist.\n";
    }
}


=pod
unlink @ARGV
foreach (@ARGV) {
    unlink $_ or warn "Can't unlink '$_': $!, continuing...\n";
}
=cut