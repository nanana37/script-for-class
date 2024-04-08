#!/bin/bash
# init class repository

if [ $# -ne 1 ]; then
	echo "class/init-dir.sh: Invalid argument"
	exit 1
fi

CLASS=$1

mkdir -p $CLASS
mkdir -p $CLASS/handout
mkdir -p $CLASS/note
mkdir -p $CLASS/report

nvim $CLASS/README.md
