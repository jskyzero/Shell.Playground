#!/bin/bash
# I_O
whatis cat
whatis sort
whatis uniq
whatis grep
whatis wc
whatis head
whatis tail

echo "line 1" > temp_1
echo "line 2" > temp_2
echo "line 3" > temp_3

cat temp_1 temp_2 temp_3 >>  temp_4

echo "head temp_4 -n 3"
head temp_4 -n 3

ls -l /usr/bin 1> temp_1
ls -l /bin/usr 2> temp_2

echo "head temp_1"
head temp_1
echo "tail temp_2"
tail temp_2


ls -i /bin/usr 1>temp_0 2>&1
echo "wc temp_0"
wc temp_0
ls -i /bin/usr &>>temp_0
wc temp_0
echo "/dev/nul"

echo "cat temp_0"
cat temp_0

echo "temp_0 > cat"
temp_0 > cat
echo "temp_0 | cat"
temp_0 | cat

echo "cat 0<temp_0"
cat 0<temp_0 1>1 2>2

echo "cat temp0>0"
cat temp_0>0
ls







rm temp_?
rm 0 1 2 cat

