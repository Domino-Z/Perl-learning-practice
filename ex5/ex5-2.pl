#!/usr/bin/perl
use strict;
use warnings;


print "What column width would you like? ";
chomp(my $width = <STDIN>);

print "Enter some lines, then press Ctrl-D:\n"; # Ctrl-Z(win)
chomp(my @lines = <STDIN>);

print "1234567890" x (($width+9)/10),"\n"; # 

# foreach (1..7) { 
#     print "1234567890" x $_ ."\n";
# }


foreach (@lines) {
    printf "%${width}s\n", $_; 
    # printf "%*s\n", $width, $_; # C语言中在应该放数字的地方出现（*）可以使用参数列表中的值
    # '%'.$width."s\n"
}

# my $format = "%20s\n" x @lines;
# printf $format, @lines;