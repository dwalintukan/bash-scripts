#!/bin/bash 
echo -n "$1" | xxd -ps -c 32 | sed -e :a -e 's/^.\{1,63\}$/&0/;ta'
