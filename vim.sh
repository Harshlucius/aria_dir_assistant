#!/bin/bash
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <directory> <filename>"
    exit 1
fi

DIRECTORY=$1
FILENAME=$2
cd "$DIRECTORY" || { echo "Failed to change directory to $DIRECTORY"; exit 1; }
if [ ! -f "$FILENAME" ]; then
    echo "File does not exist. Creating new file: $FILENAME"
    touch "$FILENAME" 
else
    echo "File already exists: $FILENAME"
fi
nvim "$FILENAME"