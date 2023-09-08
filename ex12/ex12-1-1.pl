#!/usr/bin/perl
use strict;
use warnings;

foreach my $file (@ARGV) {
    # 文件是否存在
    if (-e $file) {
        print "文件 '$file' 存在.\n";

        # 文件是否可读
        if (-r $file) {
            print "文件 '$file' 可读.\n"
        } else {
            print "文件 '$file' 不可读.\n"
        }
        # 文件是否可写
        if (-w $file) {
            print "文件 '$file' 可写.\n"
        } else {
            print "文件 '$file' 不可写.\n"
        }

        # 文件是否可执行
        if (-x $file) {
            print "文件 '$file' 可执行.\n"
        } else {
            print "文件 '$file' 不可执行.\n"
        }
    } else {
        print "文件 '$file' 不存在.\n"; 
    }
}

# perl ex12-1.pl ../ex11/*
=pod
文件 '../ex11/ex11-1.pl' 存在.
文件 '../ex11/ex11-1.pl' 可读.
文件 '../ex11/ex11-1.pl' 可写.
文件 '../ex11/ex11-1.pl' 不可执行.
文件 '../ex11/ex11-2.pl' 存在.
文件 '../ex11/ex11-2.pl' 可读.
文件 '../ex11/ex11-2.pl' 可写.
文件 '../ex11/ex11-2.pl' 不可执行.
文件 '../ex11/ex11-3.pl' 存在.
文件 '../ex11/ex11-3.pl' 可读.
文件 '../ex11/ex11-3.pl' 可写.
文件 '../ex11/ex11-3.pl' 不可执行.
=cut

