# #!/usr/bin/perl
# use strict;
# use warnings;

# for( @ARGV )
#     {
#         print "Processing $_\n";

#         when( ! -e) { print "\tFile does not exist!"}
#         when( -r _ ) { print "\tReadable!"; continue}
#         when( -w _ ) { print "\tWritable!"; continue}
#         when( -x _) { print "\tExecutable!"; continue}
#     }

#!/usr/bin/perl
use strict;
use warnings;

for my $file (@ARGV) {
    print "Processing $file\n";

    if (!-e $file) {
        print "\tFile does not exist!";
    } elsif (-r $file) {
        print "\tReadable!";
    } elsif (-w $file) {
        print "\tWritable!";
    } elsif (-x $file) {
        print "\tExecutable!";
    }
}
