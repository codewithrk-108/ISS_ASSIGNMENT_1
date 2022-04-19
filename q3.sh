#size of file in bytes
#!/bin/bash

# A
input="$1"  
wc --bytes "$input" | awk '{print $1}'

# B
input="$1"
wc -l "$input" | awk '{print $1}'

# C
input="$1"
wc -w  "$input" | awk '{print $1}'

# D
input="$1"
var=1
while read line; do
echo "Line No : $var - Count of Words :` wc -w <<< "$line"`"
((var++)) 
done <"$input"

# E
input="$1"
grep -E -o '\w++' "$input" |sort>"new.txt"
count=0
uniq -c "new.txt" > "count.txt"
while read -r line;
do
arr=($line)
if (($((${arr[0]}-1))==0))
then
continue
else
echo "Word : ${arr[1]}  - Count of Repetitions : $((${arr[0]}-1))"
fi
done < "count.txt"