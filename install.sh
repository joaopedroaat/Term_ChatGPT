#!/bin/sh

FILE="${PWD}/bin/chatGPT"
DIRFILE=$PWD
if [ $# -gt 0 ]; then
    if [ ! -f "$FILE" ]; then
        cd $DIRFILE
        go build . 
        mkdir bin
        mv Term_ChatGPT ./bin/chatGPT
    fi
else
    go build .
    mkdir bin
    mv Term_ChatGPT ./bin/chatGPT
fi

