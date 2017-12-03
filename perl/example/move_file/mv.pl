# just move files contail target str to target place.

# 声明我们用哪个版本的Perl
use 5.22.1;
# 启用了 strict 和 warnings
use strict;
use warnings;


my $target_folder = "../_Me";
system("mkdir", "-p", $target_folder);

my $ls_str = qx/ls/;
my @id_list = split("\n", $ls_str);

foreach my $id (@id_list) {
  mv_id($id);
}

sub mv_id {
  my $file_name = $_[0];

  if (not($file_name =~ m/.md$/)) {
    return;
  } else {
    my $open_file_result = open my $file, "<", $file_name;

    if (!$open_file_result) {
      die "Couldn't open '".$file_name."' for reading because: ".$!;
    }

    while(!eof $file) {
      my $line = readline $file;
      chomp $line; # same as $line = chomp $line 
      if($line =~ m/- Me/) {
        say $file_name;
        system('mv', $file_name, $target_folder);
        last;
      }
    }
    return;
  }
}