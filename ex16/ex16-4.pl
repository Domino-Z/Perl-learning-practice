#!/usr/bin/perl
use 5.010;
use strict;
use warnings;

# state 变量记录次数
# $ kill -USR1 12345

sub my_hup_handler  { state $n; say 'Caught HUP: ', ++$n }
sub my_usr1_handler { state $n; say 'Caught USR1: ', ++$n }
sub my_usr2_handler { state $n; say 'Caught USR2: ', ++$n }
sub my_int_handler { say 'Caught INT. Exiting.'; exit }

# $$ 进程号
say "I am $$";

foreach my $signal ( qw(int hup usr1 usr2)) {
    $SIG{ uc $signal } = "my_${signal}_handler";
}

while(1) {sleep 1};