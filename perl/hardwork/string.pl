use 5.24.1;
use strict;
use warnings;

my $str = 'Hello';

say lc $str;     # hello
say uc $str;     # HELLO
say length $str; # 5

# index函数会传入两个字符串参数，并且返回第二个字符串在第一个字符串中的位置。
#                   第三个参数，用来说明从哪个位置开始搜索
# rindex (right index)的函数，它会从字符串的右侧开始搜索:
say index $str, "He"; # 0

# substr会返回给定位置的字符串。 通常substr会传入3个参数。
# 第一个是字符串，第二个是从零开始计数的位置(也称为偏移量)，
# 第三个参数则是要获取的子串长度。
# （第4个参数）用来替换从原字符串选出的子串。
say substr $str, 0, 2 # "He"