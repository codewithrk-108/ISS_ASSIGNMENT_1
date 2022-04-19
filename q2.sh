#!/bin/bash
input="quotes.txt"
while IFS= read -r line
do
  prefix=`cut -d "~" -f2- <<< "$line"`
  suffix=`echo $line | cut -d "~" -f1`
  if [ -z "$line" ]
  then
  continue
  else
  echo "$prefix once said, \""$suffix"\""
  fi
done < "$input" > "speech.txt"