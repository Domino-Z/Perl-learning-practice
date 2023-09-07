#!/usr/bin/perl
## Copyright (C) 2023 by Howe

use strict;
use warnings;

$^I = ".bak";

while (<>) {
    # 临时替换 "Fred" 为 "TEMP_Fred"
    s/Fred/TEMP_Fred/gi;
    
    s/Wilma/Fred/gi;
    
    s/TEMP_Fred/Wilma/gi;
    print;  
}
