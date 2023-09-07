#!/usr/local/perl
use strict;
use warnings;

use Module::CoreList;

my %module = %{ $Module::CoreList::version{5.014} };

# print keys %module;
print join(", ", keys %module) . "\n";