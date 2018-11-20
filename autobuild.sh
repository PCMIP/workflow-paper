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
    Rscript -e "rmarkdown::render('$1', output_file='output/$3')"
    LTIME=$ATIME
    echo Done.
  fi
  sleep 5
done
