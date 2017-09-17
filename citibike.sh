#!/bin/bash

for file in *.csv; do
    awk -F "\"*,\"*" '{print $5}' $file >> names.txt
    awk -F "\"*,\"*" '{print $9}' $file >> names.txt
done

sort names.txt | uniq -c | sort -nr > sortednames.txt

nano sortednames.txt
