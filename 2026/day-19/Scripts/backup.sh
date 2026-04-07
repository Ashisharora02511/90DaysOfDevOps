#!/bin/bash

set -euo pipefail

SRC_DIR=$1
DEST_DIR=$2


if [ -z "$SRC_DIR" ] || [ -z "$DEST_DIR" ];then

        echo "Usage: $0 "
        exit 1
fi

if [ ! -d "$SRC_DIR" ];then

        echo "Directory Does not exists"

        exit 1

fi


TIME_STAMP=$(date +%F)
BACKUP_FILES="$DEST_DIR/backup-$TIME_STAMP.tar.gz"

tar -czf "$BACKUP_FILES"  "$SRC_DIR"

if [ ! -f "$BACKUP_FILES" ];then
        echo "BAckup not created"
        exit 1

fi

echo "Backup Created: $BACKUP_FILES"

du -h "$BACKUP_FILES"

find "$DEST_DIR" -name "*.tar.gz" -mtime +14 -exec rm {} \;
