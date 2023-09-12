#!/usr/bin/perl
use strict;
use warnings;

my %last_name = qw{ 
	fred flintstone Wilma Flintstone Barney Rubble
	betty rubble Bamm-Bamm Rubble PEBBLES FLINTSTONE
};

my @keys = sort {
    "\L$last_name{$a}" cmp "\L$last_name{$b}"
    or
    "\L$a" cmp "\L$b"
} keys %last_name;

# 在Perl中，\L 是一个字符串操作符，用于将字符串中的所有字符转换为小写字母。这可以用来执行大小写不敏感的字符串比较或确保字符串的一致性。

foreach (@keys){
    print "$last_name{$_}, $_\n"
}

