#!/bin/bash
read input

#b
wc -l $input | awk '{print $1}'
