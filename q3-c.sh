#!/bin/bash
read input

#c
wc -w $input | awk '{print $1}'
