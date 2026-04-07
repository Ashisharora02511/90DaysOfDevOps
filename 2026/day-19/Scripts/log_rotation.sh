#!/bin/bash

set -euo pipefail

LOG_DIR=$1

if [ -z "$LOG_DIR" ]; then

        echo "Usage: $0 logdirectory"

fi


if [ ! -d "$LOG_DIR" ]; then
  echo "Error: Directory does not exist"
  exit 1
fi

compress_count=$(find "$LOG_DIR" -name "*.log" -mtime +7 | wc -l)

delete_count=$(find "$LOG_DIR" -name "*.gz" -mtime +30 | wc -l)

find "$LOG_DIR" -name "*.log" -mtime +7 -exec gzip {} \;
find "$LOG_DIR" -name "*.gz" -mtime +30 -exec rm {} \;

echo "Compressed file count: $compress_count"
echo "Delete Count:  $delete_count"
