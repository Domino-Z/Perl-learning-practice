# #!/usr/bin/perl -w

# # 注意given结构已被Perl废弃！！！

# my $Verbose = $ENV{VERBOSE} // 1;
# my $secret = int(1 + rand 100);


# print "Don't tell anyone, but the secret bumber is $secret.\n"
#     if $Verbose;

# LOOP: {
#     print "Please enter a guess form 1 to 100: ";
#     chomp(my $guess = <STDIN>);
#     my $found_it = 0;

#     given( $guess ) {
#         when( ! /\A\d+\Z) { say "Not a number!"}
#         when( $_ > $secret ) {say "Too High!"}
#         when( $_ < $secret ) {say "Too Low!"}
#         default     { say "Just right!"; $found_it++ }
#     }

#     last LOOP if $found_it;
#     redo LOOP;
# }