#!/bin/bash

filepath=.     #current path

for d in $filepath/*;
do
fin=$(find $d -type f | wc -l)
size=$(du -sh $d | awk ' { print $1 }')
echo "$fin" "" "" "$d" "" "$size"
done > output.txt 

echo "HAI.....Please find the attachment containing the output of the script" | mutt -s "Testing" -a output.txt -- "user@example.com"
