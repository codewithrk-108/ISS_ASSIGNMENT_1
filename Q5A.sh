#!/bin/bash
read line
len=`echo $line | wc -c | awk '{print $1}'` 
for ((i=$len-1 ; i>=0 ; i--))
do
echo -n "${line:$i:1}"
done
echo \