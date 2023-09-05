#!/usr/bin/perl

use strict;
use warnings;

print "请输入第一个数字：";
my $x = <STDIN>;
chomp($x);

print "请输入第二个数字：";
my $y = <STDIN>;
chomp($y);

my $sum = $x * $y;

print "二者之积: $sum\n"