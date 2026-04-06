#!/bin/bash


check_disk() {
     echo "check disk usage"
     df -h /
}


check_memory() {
    echo "check memory"
    free -h
}

echo "Running functions"

check_disk

check_memory
