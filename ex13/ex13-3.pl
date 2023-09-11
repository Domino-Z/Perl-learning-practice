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

# 使用 glob 函数来获取当前目录中的所有文件，包括隐藏文件。
# '.* *' 是通配模式，它匹配以点号开头和不以点号开头的文件名。输出当前目录中的所有文件，包括隐藏文件。
my @files = glob '.* *';  # 使用 glob 获取所有文件，包括隐藏文件
# my @files = <.* *>;
foreach my $file (@files) {
    # next if /\A\./; # 跳过以.开头的文件
    print "$file\n";
}
