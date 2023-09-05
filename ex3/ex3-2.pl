@names = qw( fred betty barney dino wilma pebbles bamm-bamm );

# chomp($index = <STDIN>);

# print "@names[$index]\n";

print "Enter some numbers, then press Ctrl-D:\n";
chomp(@nums = <STDIN>);

foreach $num (@nums) {
    if ($num >= 1 && $num <= @names) {
        $name = $names[$num - 1];
        print "$name\n";
    } else {
        print "Invalid index: $num\n";
    }
}
