#!/usrl/bin/perl
use CGI qw(:all); # :all导出一组函数 

# print header("text/platin");
# foreach $param ( param() ) {
#     print "$param: " . param($param) . "\n";
# }

print header(),
    start_html("This is the page title");
    h1( "Input parameters" );

my $list_items;
foreach my $param ( param() ) {
    $list_items .= li( "param: " . param($param) );
}

print ul( $list_items );

print end_html();