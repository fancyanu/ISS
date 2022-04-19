#!/bin/bash
read input

#e
cat $input |
tr '[:punct:]' ' ' | tr -s ' ' | tr ' ' '\n' |
sort | uniq -c | sort -rn |
awk '{print "Word: <"$2"> - Count of repetation: ["$1"] "}'