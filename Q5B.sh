#!/bin/bash
# read line
# len=`echo $line | wc -c | awk '{print $1}'` 
# for ((i=$len-1 ; i>=0 ; i--))
# do
# awk '{printf("%d\n",A)}'
# done
# echo \

read line
echo $line | tr 'a-zA-Z' 'b-zA-Za'
#incrementing ascii value
