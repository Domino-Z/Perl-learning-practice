use warnings;

sub marine {
    $n += 1; # 全局变量 $n
    print "Hello, sailor number $n|\n";
}

& marine;
& marine;
& marine;
& marine;

sub sum_of_fred_and_barney { 
    print "Hey, you called the sum of_fred_and_barney subroutine|\n";
    $fred + $barney;
    print "Hey, I'm returning a value now!\n"; # 这里是返回值
}

sub larger_of_fred_or_barney { 
    if ($fred > $barney) {
        $fred;
    } else {
        $barney;
    }
}

sub max {
    # # 请比较它和子程序&larger_of_fred_or_barney的差异
    # if ($_[0] > $_[1]) {
    #     $_[0];
    # }else {
    #     $_[1];
    # }
    my($m, $n) = @_;
    # my($m, $n);
    # ($m, $n) = @_;
    if ($m > $n) { $m }else { $n }
}

$fred = 3;
$barney = 4;
$wilma = &sum_of_fred_and_barney;
print "\$wilma is $wilma.\n";

print max($fred,$barney)."\n";