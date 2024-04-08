#!/bin/bash

# if there is no argument
if [ $# -ne 2 ]; then
	echo "class/open-file.sh: Invalid argument"
	exit 1
fi

DIR=$1
NUM=$2

if [ ! -d $DIR ]; then
	echo "No $DIR directory"
	exit 1
fi

open $DIR/$NUM.pdf
