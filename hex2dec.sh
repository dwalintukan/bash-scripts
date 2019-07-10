#!/bin/bash
# Prints out a hex number string as decimal format
# Author: Deric Walintukan

INPUT=$1
if [[ $INPUT = 0x* ]]; then
	echo $(($INPUT))
else
	echo $((0x$INPUT))
fi
