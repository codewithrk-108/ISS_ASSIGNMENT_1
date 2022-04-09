#!/bin/bash
grep . "quotes.txt" > "new.txt"
mv "new.txt" "quotes.txt"