#!/usr/bin/perl
use strict;
use warnings;

while (my $line = <STDIN>) {
    # if ($line =~ /fred/){
    if ($line =~ /fred/i) { # 使用/i选项进行不区分大小写的匹配
        print $line;
    }
}