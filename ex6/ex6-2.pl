#!/usr/bin/perl
use strict;
use warnings;

# my(@words, %count, $word);

# 1. 读取每行一个单词,存入数组
chomp(my @words = <STDIN>);

# 1-2 遍历数组，统计单词出现次数,将单词和单词次数存进hash
my %count;
foreach my $word ( @words ) {
    $count{$word} += 1; 
    # $count{$word} = $count{$word} + 1;
}

# 2. 打印一份列出每个单词出现次数的列表
foreach my $word (keys %count) { # sort keys %count
    print "$word was seen $count{$word} times.\n";
}

# 3.根据ASCII编码表输出报表
foreach my $word (sort keys %count) {
    print "$word was seen $count{$word} times.\n";
}