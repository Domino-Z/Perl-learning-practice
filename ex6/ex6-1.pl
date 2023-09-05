#!/usr/bin/perl
use strict;
use warnings;

my %family_name = (
    'fred'   => 'flintstone',
    'barney' => 'rubble',
    'wilma'  => 'flintstone',
);

print "Plese give me a first name:\n";
chomp(my $name = <STDIN>);

if ( exists($family_name{$name}) ) {
    print "Last name is: " . $family_name{$name} ."\n";
}else{
    print "get off!"."\n";
}