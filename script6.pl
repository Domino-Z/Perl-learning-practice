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
# (my $copy = $original) =~ s/\d+ ribs?/10 ribs/r; #/r保留原字符串，替换结果作为替换操作的返回值返回

my @fields = split /:/, "abc:def:g:h"; # (得到("abc", "def", "g", "h"))
print "@fields\n";

# my $result = join $glue, @pieces;
my $x = join ":", 4, 6, 8, 10, 12; 
print $x."\n";

my @values = split /:/, $x;
print @values."\n";
my $z = join "-", @values;
print @values ."\n" . $z ."\n";

$_ = "Hello there, neighbor!";
my($first, $second, $third) = /(\S+) (\S+), (\S+)/;
print "$second is my $third\n";

# perl -p -i.bak -w -e 's/Randall/Randal/g fred*.dat'
# !/usr/bin/perl -w
# $^I = ".bak";

# while (<>) {
    #s/Randall/Randal/g;
    #print;   
#}