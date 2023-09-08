foreach my $file (@ARGV) {
    my $attribs = attributes($file);
    print "'$file' $attribs.\n";
}

sub attributes {
    # 报告某个给定文件的属性
    my $file = shift @_;
    return "does not exist" unless -e $file;

    my @attribs;
    push @attribs, "readable" if -r $file;
    push @attribs, "writable" if -w $file;
    push @attribs, "executable" if -x $file;

    return "exists" unless @attribs;
    return 'is ' . join(" and ", @attribs);
}
