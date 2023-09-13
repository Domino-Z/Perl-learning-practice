#!/usr/bin/perl
use strict;
use warnings;
# Monday；
# Tuesday；
# Wednesday；
# Thursday；
# Friday；
# Saturday；
# Sunday；

# 注意到休息日以S开头

if (`date` =~ /\AS/) {
    print "go play!\n";
} else {
    print "go to work!\n";
}

if (`date` =~ /\A(Saturday|Sunday)/) {
    print "go play!\n";
} else {
    print "go to work!\n";
}