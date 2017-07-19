#!/bin/bash

url="$1"
echo "Please enter a URL: "
read url
wget $url 2>&1 | tail -4 | head -1 | awk -F "=" '{print $NF}'

