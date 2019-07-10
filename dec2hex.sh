#!/bin/bash
# Prints out the hex representation of the number
# Author: Deric Walintukan

printf "%064s\n" $(echo "obase=16; $1" | bc)
