print "Enter some strings, then press Ctrl-D:\n";
chomp(@names = <STDIN>);

print "sort(@names)\n";

print "\n";

foreach $name (sort(@names)) {
    print "$name \n";
}

=pod
chomp(@lines = <STDIN>);
@sorted = sort @lines;
print "@sorted\n";
print sort <STDIN>;
=cut