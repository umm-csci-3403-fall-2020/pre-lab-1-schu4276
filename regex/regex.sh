#!/bin/bash
# s specifies substitution operation
# using the /1 and /2 flags to replace the respective occurance of a pattern in a line 
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt | tee r0_output.txt

 
awk 'NR == 1 || NR == 2|| NR == 4{print "1. " $4 "\n" "2. " $9}' r1_input.txt > r1_output.txt 
sed -E 's/\* sandwich with (\S+) (for here|to go)/1. \1\n2. \2\n/' r2_input.txt > r2_output.txt
