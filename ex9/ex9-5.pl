#!/usr/bin/perl
## Copyright (C) 2023 by Howe

my %do_these;
foreach (@ARGV) {
    $do_these{$_} = 1;
}

while (<>) {
    if (/\A## Copyright/){
        delete $do_these{$ARGV};
    }
}

@ARGV = sort keys %do_these;
$^I = ".bak";
while (<>){
    if (/\A#!/) {
        $_ .= "## Copyright (C) 2023 by Howe\n";
    }
    print;
}