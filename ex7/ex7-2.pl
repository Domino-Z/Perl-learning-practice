#!/usr/bin/perl
use strict;
use warnings;

while (my $line = <STDIN>) {
    # if ($line =~ /fred/i) { # 使用/i选项进行不区分大小写的匹配
    if ($line =~ /[fF]red/i) { # 匹配符合 [] 内的字符
    # /(f|F)red/
    # /fred|Fred/
        print $line;
    }
}