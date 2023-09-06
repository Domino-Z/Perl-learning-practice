#!/usr/bin/perl
use strict;
use warnings;

while (<>) {
    if (/wilma/ && /fred/i) {
        print;
    }
}

# while (<>) {
#     if (/fred/) {
#         if (/wilma/){
#             print;
#         }
#     }
# }
while (<>) {
    if (/wilma.*fred|fred.*wilma/) {
        print;
    }
}