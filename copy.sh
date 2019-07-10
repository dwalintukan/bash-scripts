#!/bin/bash
# Copies the scripts to /usr/local/bin so it can be used by anyone
# Author: Deric Walintukan

DEST=/usr/local/bin

echo "Copying scripts to $DEST"
cp dec2hex.sh $DEST
cp hex2dec.sh $DEST
cp str2hex.sh $DEST