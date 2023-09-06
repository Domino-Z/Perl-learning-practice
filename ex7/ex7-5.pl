#!/usr/bin/perl
use strict;
use warnings;

while (<>) {
    if (/(\S)\1/) { # \S 匹配任何非空格字符，\1 匹配前一个括号内捕获的字符的重复。
        print;
    }
}