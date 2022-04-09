#!/bin/bash
sort "quotes.txt" | uniq > "new.txt"
mv "new.txt" "quotes.txt"
#displays unique content --quotes