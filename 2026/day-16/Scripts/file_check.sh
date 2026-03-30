#!/bin/bash

# write a scripts to check file present or not
#

read -p "Enter file name: " FILENAME
if [ -f "$FILENAME" ]; then
        echo "files exists"
else
        echo "files not exists"
