#!/usr/bin/perl
use strict;
use warnings;

#print "PATH is $ENV{PATH}\n";
my $longest = 0;

foreach my $key (keys %ENV) {
    $longest = length($key) if length($key) > $longest;
}

foreach my $key (sort keys %ENV) {
    printf "%-${longest}s %s\n", $key, $ENV{$key};
}

=pod
"%-${longest}s %s\n" 是格式字符串，它包含两个占位符 %s，每个占位符代表一个要被替换的字符串。具体解释如下：

"%-${longest}s"：这个部分指定了第一个占位符的格式。%s 表示这个占位符将被替换为一个字符串。- 表示左对齐，${longest} 表示占位符的最小宽度，它的值是你计算出的最长环境变量名称的长度。所以，这个占位符的作用是用指定的宽度左对齐显示环境变量名称。

" %s\n"：这个部分是格式字符串的一部分，它表示一个空格和第二个占位符 %s，用于显示环境变量的值。\n 表示换行，所以每一行输出都会以换行符结束。
=cut