# 声明我们用哪个版本的Perl
use 5.24.1;
# 启用了 strict 和 warnings
use strict;
use warnings;

my $file_name = "ipconfig";
my $open_file_result = open my $file, "<", $file_name;

if (!$open_file_result) {
  die "Couldn't open '".$file_name."' for reading because: ".$!;
}

# this is a common idiom for file reading
# open(my $fh, "<", $f) || die "Couldn't open '".$f."' for reading because: ".$!;

while(!eof $file) {
  my $line = readline $file;
  chomp $line; # same as $line = chomp $line 
  if($line =~ m/^ {3}IPv4 Address.*/) {
    say $line;
  }
}