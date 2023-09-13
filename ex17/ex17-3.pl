#!/usr/bin/perl
# use strict;
# use warnings;

# foreach my $file ( glob( '*' )) {
#     my( $atime, $mtime ) = map {
#         my( $year, $month, $day ) = (localtime($_))[5,4,3];
#         $year += 1900; $month +=1;
#         sprintf '%4d-%02d-%02d', $year, $month, $day;
#     }(stat $file)[8,9];
#     printf "%-20s %10s %10s\n", $file, $atime, $mtime;
# }

use POSIX qw(strftime);
foreach my $file ( glob( '*' ) ) {
    my( $atime, $mtime ) = map {
        strftime( '%Y-%m-%d', localtime($_));
    }(stat $file)[8,9];

    printf "%-20s %10s %10s\n", $file, $atime, $mtime;
}