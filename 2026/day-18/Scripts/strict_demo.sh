#!/bin/bash

set -euo pipefail

echo "Testing undefined variable"

echo "Name is : $name"


echo "testing -e"
ls /wrong/path


echo "Testing pipefail"

cat missing.txt | grep hello
echo "END"
