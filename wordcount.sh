#!/bin/bash


file="$1"

if ! [[ -f "$file" ]]
then
echo "This argument is not a file"
exit 1
fi
grep -o "the" $file | wc -l

