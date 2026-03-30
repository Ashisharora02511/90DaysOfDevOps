#!/bin/bash
# take number as user input check given number postive & negtive or equal to zer

read -p "ENTER A NUMBER: " NUM

if [ $NUM -gt 0 ]; then
        echo "POSTIVE NUMBER"
elif [ $NUM -lt 0 ]; then
        echo "NEGTIVE NUMBER"
else

        echo "ZERO"
fi
