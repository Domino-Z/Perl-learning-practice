#!/usr/bin/perl
use strict;
use warnings;

my $number = int(1 + rand(100));

while (1) {
    
    print "Enter a number(from 1 to 100): \n";
    # my $guess_number = chomp(<STDIN>); 不能这么写，chomp 函数会移除字符串末尾的换行符，但它的返回值是被移除的换行符的数量，而不是用户输入的内容。
    my $guess_number = <STDIN>;  
    chomp($guess_number);

    # 先测试字符串
    if ($guess_number =~ /quit|exit|\A\s*\z/i) {
        print "Bye, The number was $number.\n";
        last;
    } elsif($guess_number == $number) {
        print "Right!";
        last;
    } elsif($guess_number > $number) {
        print "Too hight!";
    } elsif($guess_number < $number) {
        print "Too low!";
    } else {
        last;
        # redo;
        # next;
    }

}