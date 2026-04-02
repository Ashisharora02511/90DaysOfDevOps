#!/bin/bash

set -e

mkdir /tmp/devops-test || echo "Directory alredy exists"
cd /tmp/devops-test || echo "Cannor enter the directory"
touch testfile.txt ||  echo "Failed to create file"

echo "Completed"
