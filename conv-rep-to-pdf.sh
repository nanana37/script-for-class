#!/bin/bash

# if there is no argument
if [ $# -eq 0 ]; then
	echo "class/conv-to-pdf.sh: Invalid argument"
	exit 1
fi

REPDIR="report"
if [ -d "$REPDIR" ]; then
	mkdir -p $REPDIR/out
else
	echo "Directory '$REPDIR' does not exist."
	exit 1
fi

NUM=$1
INPUT=$REPDIR/$NUM.md
OUTPUT=$REPDIR/out/report$NUM.pdf

# convert the markdown file to pdf
# $ pandoc *.md -t pdf -o *.pdf
pandoc $INPUT -t pdf -o $OUTPUT

# open the pdf
open $OUTPUT
