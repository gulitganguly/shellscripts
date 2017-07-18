#!/bin/bash

NUM_CPUS=`cat /proc/cpuinfo | grep "model name" | wc -l`

for index in `seq 1 $NUM_CPUS`
do
	echo "CPU- $index"
	cat /proc/cpuinfo | grep "model name" | head -$index | tail -1
	cat /proc/cpuinfo | grep "cpu speed in MHz" | head -$index | tail -1
	cat /proc/cpuinfo | grep "cache size" | head -$index | tail -1
done
