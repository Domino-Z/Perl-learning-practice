#!/usr/bin/perl
use strict;
use warnings;

# 打开文件并读取字符串到数组
my $filename = "story.txt";  
open my $fh, '<', $filename or die "无法打开文件 '$filename': $!";
my @strings = <$fh>;
close $fh;

chomp(@strings);

# 存储匹配成功的字符串
my %matches;

while (1) {
    print "请输入模式（或留空退出）: ";
    my $pattern = <STDIN>;
    chomp $pattern;

    last unless $pattern;  # 如果输入为空白行，则退出程序

    # 使用eval来检查模式的合法性
    my $eval_result = eval { qr/$pattern/ };

    if ($@) {
        # 模式不合法，报告错误
        warn "模式不合法: $@\n";
        next;
    }

    my @matched_strings = grep { $_ =~ /$eval_result/ } @strings;
    my $match_count = scalar @matched_strings;

    if ($match_count > 0) {
        print "匹配成功的字符串共有 $match_count 个:\n";
        print join("\n", @matched_strings) . "\n";
        $matches{$pattern} = \@matched_strings;
    } else {
        print "没有匹配成功的字符串。\n";
    }
}

print "程序结束。\n";
