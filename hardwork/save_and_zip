#!/bin/bash
# save and zip

whatis gzip
whatis bzip2
whatis tar
whatis zip
whatis rsync

find -type f -name "*" -size +1w > date_1
ls -l date_*
gzip date_*
ls -l date_*
gunzip date_*
ls -l date_*
rm date_*

mkdir Disk
mkdir Disk/{1..9}{1..9}
ls Disk
touch Disk/{1..9}{1..9}/{1..99}
ls Disk/11
tar cf Disk.tar Disk
ls -l -h | grep Disk
tar tf Disk.tar | wc
tar tf Disk.tar | wc
rm -r Disk
ls -l -h | grep Disk
tar xf Disk.tar
ls -l -h | grep Disk

mkdir Disk2
rsync -av Disk Disk2


rm -r Disk*

