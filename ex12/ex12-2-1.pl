#!/usr/bin/perl
use strict;
use warnings;
use File::stat;
use Time::Piece;

# 检查是否提供了文件名参数
if (@ARGV) {
    my $oldest_file = find_oldest_file(@ARGV);
    if ($oldest_file) {
        my $age_in_days = calculate_age_in_days($oldest_file);
        print "最旧的文件是 '$oldest_file'，已存在 $age_in_days 天。\n";
    } else {
        print "无法找到任何文件。\n";
    }
} else {
    print "未提供文件名参数。\n";
}

sub find_oldest_file {
    my @files = @_;
    my $oldest_file;
    my $oldest_mtime = time;

    foreach my $file (@files) {
        if (-e $file) {
            my $file_stat = stat($file);
            my $file_mtime = $file_stat->mtime;
            if ($file_mtime < $oldest_mtime) {
                $oldest_mtime = $file_mtime;
                $oldest_file = $file;
            }
        }
    }

    return $oldest_file;
}

sub calculate_age_in_days {
    my $file = shift;
    my $file_stat = stat($file);
    my $file_mtime = $file_stat->mtime;
    my $current_time = time;
    my $age_in_seconds = $current_time - $file_mtime;
    my $age_in_days = int($age_in_seconds / (60 * 60 * 24));
    return $age_in_days;
}
