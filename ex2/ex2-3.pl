#!/usr/bin/perl

use strict;
use warnings;

print "请输入一个字符串：";
my $x = <STDIN>;
chomp($x);

print "请输入一个数字：";
my $y = <STDIN>;
chomp($y);

# my $result = ''; # 初始化结果字符串

# while ($y > 0) {
#     $result .= "$x\n"; # 使用 .= 连接字符串
#     # $result =%result . "$x\n";
#     $y = $y - 1;
# }

# print "$result";


print "$x\n" x $y; # 输出重复的字符串三次