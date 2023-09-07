#!/usr/local/perl
use strict;
use warnings;

use File::Basename;
use DBI;

my $name = "/usr/local/perl";
my $basename = basename $name; # 返回'perl'
my $dirname = dirname $name; # 返回'perl'
print $basename."\n";
print $dirname."\n";

# $dbh = DBI->connect($data_source, $username, $password);

# my $data_source = "dib:Pg:dbname=bame_of_database";
# my $sth = $dbh->prepare("SELECT * FROM foo WHERE bla");
# $sth->execute();
# my @row_ary = $sth->fetchrow_array;
# $sth->finish;
# $dbh->disconnect();