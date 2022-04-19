#!/bin/bash
#A
read line
len=`echo $line | wc -c | awk '{print $1}'` 
for ((i=$len-1 ; i>=0 ; i--))
do
echo -n "${line:$i:1}"
done
echo \

#B

read line
echo $line | tr 'a-zA-Z' 'b-zA-Za'
#incrementing ascii value

#C

read line
len=`echo $line | wc -c | awk '{print $1}'` 
for ((i=$len/2-1 ; i>=0 ; i--))
do
echo -n "${line:$i:1}"
done

for ((i=$len/2 ; i<$len ; i++))
do
echo -n "${line:$i:1}"
done

echo \