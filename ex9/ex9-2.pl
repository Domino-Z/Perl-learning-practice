#!/usr/bin/perl
## Copyright (C) 2023 by Howe

use strict;
use warnings;

$^I = ".bak";

while (<>) {
    s/Fred/Larry/ig;
    print;
}