use Time::Piece;

my $t = localtime;

my $now = DateTime->new(
    year    => $t->year,
    month   => $t->mon,
    day     => $t->mday,
);

if ( $now < $then) {
    die "You entered a date in the future!\n";
}