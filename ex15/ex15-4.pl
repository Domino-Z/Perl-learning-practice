use 5.010;

say "Checking the number <$ARGV[0]>";

given( $ARGV[0] ){
    when( ! /\A\d+\Z/ ) { say "Not a number!" }

    my @divisors = divisors( $_ );

    my @empty;
    when( @divisors ~~ @empty ) { say "Number is prime" }
    
    default { say "$_ is divisible by @divisors" }
}

sub divisors {
    my $number = shift;

    my @divisors = ();
    foreach my $divisors ( 2.. $number/2 ) {
        push @divisors, $divisor unless $number % $divisors;
    }
    return @divisors;
}