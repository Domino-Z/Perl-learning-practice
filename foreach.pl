#/usr/bin/perl

use warnings;

@rocks = qw/ bedrock slate lava /;
foreach $rock (@rocks) {
    $rock = "\t$rock";
    $rock .= "\n";
}
print "The rocks are:\n", @rocks;


foreach (1..10) { # 默认会用 $_ 作为控制变量
    print "i can count to $_!\n"
}

my @rocks = qw/ bedrock slate rubble granite / ;
while( my( $index, $value ) = each @rocks) {
    say ("$index: $value");
}

@rocks = qw/ bedrock slate rubble granite / ;
foreach $index ( 0 .. $#rocks ) {
    print "$index: $rocks[$index]\n";
}