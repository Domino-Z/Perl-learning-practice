#!/usr/bin/perl
use strict;
use warnings;

my @numbers;
push @numbers, split while <>;
foreach (sort {$a <=> $b} @numbers) {
    printf "%20g\n", $_;
}
# /g 使用数字格式
# print "--------\n" ;
# # /s 使用字符串格式

# foreach (sort {$a <=> $b} @numbers) {
#     printf "%20s\n", $_;
# }

=pod
while (<>) {
    push @numbers,split;
}
=cut