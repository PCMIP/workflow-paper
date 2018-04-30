#!/bin/bash

echo $1
echo $2
echo $3

### Set initial time of file
LTIME=`stat -c %Z ./$1`

while true    
do
  ATIME=`stat -c %Z ./$1`
  
  if [[ "$ATIME" != "$LTIME" ]]
  then    
    pandoc -s $1 --bibliography $2 --filter pandoc-citeproc elsevier-harvard.csl -o output/$3 -c paper_style.css
    LTIME=$ATIME
    echo Done.
  fi
  sleep 5
done
