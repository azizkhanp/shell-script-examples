#!/bin/bash
# write a script to print num of "s" mississipi
# grep -o "s": This extracts all occurrences of the letter "s" from the input.
# <<<"$word": This passes the word "mississipi" as input to grep.
# wc -l: This counts the number of lines in the output,

word=mississipi
grep -o "s" <<<"$word" | wc -l
