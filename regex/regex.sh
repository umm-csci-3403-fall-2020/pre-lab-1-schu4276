#!/bin/bash
# using sed to create the first output file, sed code was provided
# tee allows for the output to be displayed and saved into a file
sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt | tee r0_output.txt

# r1_input.txt -F flag is used here for flag it makes it so the input display correctly
# this takes advantage of the fact that all of the wanted text includes "My favorite sandwhich"
# NF is the number of fields in the current record, so the NF-1 here refers to the second from last value
# \n refers to new line
awk -F  "[. ]+" '/My favorite sandwich is /{print  "1. " $4, "\n""2. "$(NF-1), "\n"}' r1_input.txt > r1_output.txt

#r2_input.txt using -E to make matching possible in sed and the s to mean substution
# here we are substuting the 'sandwhich with' line 
# \n signinfies a new line
#(\S+) lets us get the words delineated my periods becasue they do not contain "white spaces"
sed -E 's/\* sandwich with (\S+) (for here|to go)/1. \1\n2. \2\n/' r2_input.txt > r2_output.txt
