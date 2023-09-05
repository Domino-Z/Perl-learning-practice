#!/usr/bin/perl

use strict;
use warnings;
# 使用 Perl 的 Math::Trig 模块来获取更准确的 π 值
use Math::Trig;

=pod
在 Perl 编程中，my 是一个关键字，用于声明一个变量的作用域。
它用于创建一个局部变量，该变量只在当前代码块内可见和可用。
=cut

# 定义圆的半径
my $radius = 12.5;

# 计算圆的周长
my $circumference = 2 * pi * $radius;

# 输出结果
print "圆的周长是: $circumference\n";
