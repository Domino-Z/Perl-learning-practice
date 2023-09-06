#!/usr/bin/perl
use strict;
use warnings;

$_ = "yabba dabba doo";
if (/abba/) {
    print "It matched!\n";
}

$_ = "abba";
if (/(.)\1/) { # 匹配'bb'
    print "It matched same character next to itself|\n";
}


$_ = "Hello there, neighbor";
if (/(\S+) (\S+), (\S+)/) {
    print "words were $3 $2 $1\n"
}

# ？表示问号本身（需要转义）
# ？表示数量可有可无
# ？表示非贪婪匹配
# ？放弃捕获