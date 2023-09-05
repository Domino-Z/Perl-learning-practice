#!/usr/bin/perl
# 这一行是 perl 中的注释
=pod 注释
perl 也支持多行注释，
最常用的方法是使用 POD(Plain Old Documentations) 来进行多行注释。
=cut

# 输出 "Hello, World"
print("Hello, world\n");
print "Hello, world\n";

print "Hello, world\n";    # 双引号
print 'Hello, world\n';    # 单引号

$a = 10;
print "a = $a\n";
print 'a = $a\n';