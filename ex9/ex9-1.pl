#!/usr/bin/perl
## Copyright (C) 2023 by Howe

while (<>) {                   # take one input line at a time
	chomp;
    my $what = 'fred|barney';
	if (/($what){3}/) {
		print "Matched: |$`<$&>$'|\n";  # the special match vars
	} else {
		print "No match: |$_|\n";
	}
}