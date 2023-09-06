#!/usr/bin/perl
while (<>){
    chomp;
    # if (/\s\z/) {
    #     print "$_#\n"; # ‘#’ 用作标示字符，表示行尾的位置。
    # }
    if (/\s$/) {
        print $_ .'===';
    }
}
