#!/usr/bin/perl
use strict;
use warnings;

my %family_name = (
    'fred'   => 'flintstone',
    'barney' => 'rubble',
);
foreach my $person (qw< barney fred >) {
    print "I've heard of $person $family_name{$person}.\n";
}

my %some_hash = ('foo', 35, 'bar', 12.4, 2.5, 'hello',
      'wilma', 1.72e30, 'betty', "bye\n");

my @any_array = %some_hash; # unwinding
print "@any_array\n";

# my %new_hash = %old_hash;
# my %inverse_hash = reverse %any_hash;

# print my @k = keys %family_name ;
# print my @v = values %family_name ;

# # 乱序返回
# while ( (my $key, my $value) = each %family_name) {
#     print "$key => $value\n"
# }

# 排序
foreach my $key (sort keys %family_name) {
    my $value = $family_name{$key};
    print "$key => $value\n";
    print "$key => $family_name{$key}\n"
}

print "PATH is $ENV{PATH}\n";