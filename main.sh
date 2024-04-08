#!/bin/bash
# Alias: rp

SCR_DIR="$(dirname "$(realpath "$0")")"
if [ $# -eq 0 ]; then
	sh "$SCR_DIR/help.sh"
	exit 0
fi

# 'rp help' for help message
if [ $1 = "help" ]; then
	sh "$SCR_DIR/help.sh"
	exit 0
fi

if [ $# -ne 2 ]; then
	echo "Usage: rp [command] <option>"
	exit 1
fi

CMD=$1
OPT=$2

if [ $CMD = "init" ]; then
	sh "$SCR_DIR/init-dir.sh" $OPT
elif [ $CMD = "rep" ] || [ $CMD = "r" ]; then
	sh "$SCR_DIR/edit-file.sh" report $OPT
elif [ $CMD = "note" ] || [ $CMD = "n" ]; then
	sh "$SCR_DIR/edit-file.sh" note $OPT
elif [ $CMD = "conv" ] || [ $CMD = "p" ]; then
	sh "$SCR_DIR/conv-rep-to-pdf.sh" $OPT
elif [ $CMD = "hand" ] || [ $CMD = "h" ]; then
	sh "$SCR_DIR/open-file.sh" handout $OPT
else
	echo "Invalid command name"
	exit 1
fi
