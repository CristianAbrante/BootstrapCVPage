#!/bin/sh
# Simple script to compile scss files into a master.css

SCSS_DIR="scss/"
SCSS_FILE="custom.scss"
CSS_DIR="css/"
CSS_FILE="master.css"

echo 'Compiling custom.scss into master.css'

if [ ! -d $CSS_DIR ];
  then mkdir $CSS_DIR;
fi

INPUT=$SCSS_DIR$SCSS_FILE
OUTPUT=$CSS_DIR$CSS_FILE

sass $INPUT $OUTPUT

echo 'Done!'
