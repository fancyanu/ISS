#!/bin/bash
read input

#d
awk '{ print "Line No: <"NR"> - Count of Words: ["NF"]"}' $input
