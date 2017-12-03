use 5.24.1;
use strict;
use warnings;

say "What's your name ?";
# $name 叫做标量，所有标量以 $ 开头。
# 标量是变量的一种。在Perl 中，变量用 my 来声明。
my $name = <STDIN>;
# 去除字符串末尾的换行符 “\n”。
chomp $name;
say "Hello $name, Welcome";