#!/bin/bash
# re rearsh

echo "^" "$"
grep -h -i "^..j" /usr/share/dict/words | grep -h -i "r$" | wc

echo "[]"
grep -h -i "^[abc][abc][abc]" /usr/share/dict/words | grep -h -i "^...[^d-z]" | wc

echo "|"
grep -h -i -E "^(ab|bc|cd)" /usr/share/dict/words | wc

echo "?"
grep -h -i -E "(b|c)?ba" /usr/share/dict/words | grep -h -i -E "bba|cba" | wc
grep -h -i -E "(b|c)?ba" /usr/share/dict/words | wc

echo "*"
grep -h -i -E ab[a]* /usr/share/dict/words | grep aba | wc
grep -h -i -E  ab[a]* /usr/share/dict/words | wc

echo "+"
grep -h -i -E ab[a]+ /usr/share/dict/words | grep aba | wc
grep -h -i -E ab[a]+ /usr/share/dict/words |  wc

echo "{n,m}"
echo "Orz"


echo "POSIX*"
echo "[ABCDEFGHIJKLMNOPQRSTUVWXYZ]"
ls /usr/sbin/[ABCDEFGHIJKLMNOPQRSTUVWXYZ]* | wc
echo "{A..Z}*" 
ls /usr/sbin/{A..Z}* | wc
echo "[A-Z]*"  
ls /usr/sbin/[A-Z]* | wc
echo "[[:upper:]]*" 
ls /usr/sbin/[[:upper:]]* | wc


find . -regex ".*[^-\_./0-9a-zzA-Z].*"

