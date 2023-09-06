#!/usr/bin/perl
while (<>) {
    chomp;
    if (/(?<word>\w+a)\b/) {
        print "Matched: |$`<$&>$'|\n";
        print "'word' contains '$+{word}'\n";
    } else {
        print "No match: |$_|\n";
    }
}

# ?<word> 是给捕获组命名为 "word"。
# $+{word} 用于获取命名捕获组 "word" 中匹配的内容。
