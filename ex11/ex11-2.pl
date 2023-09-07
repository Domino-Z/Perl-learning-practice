#!/usr/local/perl -w
use DateTime;
# $t = localtime;
my $t = DateTime->now;  # 获取当前时间

my $now = DateTime->new(
    year    => $t->year,
    month   => $t->month,
    day     => $t->day,
);

my $then = DateTime->new(
    year    => $ARGV[0],
    month   => $ARGV[1],
    day     => $ARGV[2],
);

my $duration = $now - $then;

my @units = $duration->in_units( qw(years months days) );
printf "%d years, %d months, and %d days\n", @units;
