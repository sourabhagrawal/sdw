#!/bin/bash

for file in *\?m\=1465588199; do
    #echo "$file"
    #echo "${file%%\?m\=1465588199}"
    mv -- "$file" "${file%%\?m\=1465588199}"
done
