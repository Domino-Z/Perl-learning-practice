#!/usr/bin/perl
## Copyright (C) 2023 by Howe

$^I = ".bak";

while (<>) {
    if (/\A#!/) {
        $_ .= "## Copyright (C) 2023 by Howe\n";
    }
    print;
}

# perl ex9-4.pl ex*