#!/usr/bin/perl
use strict;
use warnings;

# $_ = "He's out bowling with Barney tonight.";
# s/Barney/Fred/; # 把 Barney 替换为 Fred
# print "$_\n"

$_ = "fred flintstone";
if (s/fred/wilma/) {
    print "Successfully replaced fred with wilma!\n";
}

# s/^\s+//; 将开头的空白替换成空字符串
# s/\s+$//; 将结尾的空白替换成空字符串

# s/^\s+|\s+$//g; # 去除开头和结尾的空白符

my $original = 'Fred ate 1 rib';
my $copy = $original;
$copy =~ s/\d+ ribs?/10 ribs/;
print $copy."\n";

(my $copy = $original) =~ s/\d+ ribs?/10 ribs/;