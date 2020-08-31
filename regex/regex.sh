#!/bin/bash
# s specifies substitution operation
# using the /1 and /2 flags to replace the respective occurance of a pattern in a line 
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt | tee r0_output.txt
awk 'match($0, /([A-Z]), (
