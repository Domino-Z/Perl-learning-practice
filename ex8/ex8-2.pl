#!/usr/bin/perl
while (<>) {                   # take one input line at a time
	chomp;
	if (/a$/) {
		print "Matched: |$`<$&>$'|\n";  # the special match vars
	} else {
		print "No match: |$_|\n";
	}
}

# $`: 匹配部分的前一部分字符串
# $&: 匹配的字符串
# $': 还没有匹配的剩余字符串