#!/bin/bash
#A
grep . "quotes.txt"
 
#B
awk '!x[$0]++' quotes.txt 
#displays unique content --quotes