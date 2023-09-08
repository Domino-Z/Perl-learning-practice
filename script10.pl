#!/usr/local/perl
use strict;
use warnings;

# system 'for i in *; do echo == $i ==; cat $i; done';

my $now = `date`;
print "The time is now $now";

my @functions = qw {int rand sleep length hex eof not exit sqrt umask};
my %about;

foreach (@functions) {
    $about{$_} = `perldoc -t -f $_`;
}

print %about;

# open my $find_fh, '-|',
#     'find', qw (/ atime +90 -size +1000 -print)
#         or die "fork: $!";
# while (<$find_fh>) {
#     chomp;
#     printf "%s size %dK last accessed %.2f days ago\n",
#         $_, (1023 + -s $_)/1024, -A $_;
# }

my @odd_numbers = grep {$_ % 2} 1...1000;
print @odd_numbers;