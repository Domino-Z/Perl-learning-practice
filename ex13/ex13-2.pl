#!/usr/bin/perl
use strict;
use warnings;

print "Enter directory: ";
chomp(my $dir = <STDIN>);

if ($dir =~ /\A\s*\Z/) {
    chdir or die "Can't chdir to your home directory: $!";
} else {
    chdir($dir) or die "Can't chdir to '$dir': $!";
}

# 使用 opendir 函数打开当前目录
# 然后使用 readdir 函数读取目录中的所有文件和子目录，包括名称以点号开头的文件（隐藏文件）。
# 最后，使用 closedir 函数关闭目录句柄。

opendir my $dh, '.' or die "Can't open current directory: $!";
my @files = readdir $dh;
closedir $dh;

foreach my $file (@files) {
    # next if /\A\./; # 跳过以.开头的文件
    print "$file\n";
}
