#!/bin/bash

cat $1 | tr -s " "  | tr ' ' '\n' | sort | uniq -c | awk '{print $2 " " $1}' > ./tmptmp
awk -v total=$total '{ print $1 "\t" $2 "\t" 100*$2/129015 "%" }' tmptmp > $1.freq

rm ./tmptmp
