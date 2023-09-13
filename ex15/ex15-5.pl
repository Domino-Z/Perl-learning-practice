use 5.010;

say "Checking the number <$ARGV[0]>";

given( $ARGV[0] ){
    when( ! /\A\d+\Z/ ) { say "Not a number!" }

    my @divisors = divisors( $ARGV[0] );

    when ( @divisors ~~ 2) { # 如果 2 在 @divisors 里面 
        say "$_ is even";
        continue;
    }

    when( !(@divisors ~~ 2)) { # 如果 2 不在 @divisors 里面
        say "$_ is odd";
        continue;
    }

    when( @divisors ~~ $favorite ) {
        say "$_ is divisible by my favorite number";
        continue;
    }

    when( $favorite ) {
        say "$_ is my favorite number";
        continue;
    }    

    my @empty;
    when( @divisors ~~ @empty ) { say "Number is prime" }
    
    default { say "$_ is divisible by @divisors" }
}

sub divisors {
    my $number = shift;

    my @divisors = ();
    foreach my $divisors ( 2.. $ARGV[0]/2 + 1 ) {
        push @divisors, $divisor unless $number % $divisors;
    }
    return @divisors;
}