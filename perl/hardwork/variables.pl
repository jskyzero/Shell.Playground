# Variables
# Perl variables come in three types: scalars, arrays and hashes.
# Each type has its own sigil: $, @ and % respectively. 
# Variables are declared using my, and remain in scope 
#   until the end of the enclosing block or file.

use 5.24.1;
use strict;
use warnings;


# scalar variable can contain:
# undef / number / string / reference to others
my $undef = undef;

# bot boolean type, false if
# undef / 0 / "" / "0"

# Numerical operators:  <,  >, <=, >=, ==, !=, <=>, +, *
# String operators:    lt, gt, le, ge, eq, ne, cmp, ., x
say "4G" + "8H"; # rasise warnning

# array variable can use like
my @str_array = (
  "Hello",
  "Perl"
);
say @str_array[1];

# hash variable can use like
my %hash_table = (
  "1" => "1",
  "2" => "2"
);

say $hash_table{"1"};
say %hash_table;

# list 
# A list is an ephemeral value which can be assigned 
#   to an array or a hash variable.

my @list = (
  1,
  2,
  (
    3,
    "4"
  )
);
say @list;
say $list[3];