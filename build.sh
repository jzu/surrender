#!/bin/bash

export LANG=C
export LC_ALL=C

. ./includes.sh


# Grab the source 

git pull | grep up-to-date 
if [ $? -eq 0 ]
then
  exit 0
fi


# Shia Labeouf

$COMMAND
if [ $? -ne 0 ]
then
  exit 1
fi


# Send back the result

git add "$DST_FILE"
git commit -m "Automatically built by https://github.com/jzu/surrender"
git push

# Cleanup

/bin/mv -f "$SRC_FILE" /tmp/source.$$
/bin/mv -f "$DST_FILE" /tmp/dest.$$
/bin/rm -f "$PROJECT".*
/bin/mv -f /tmp/source.$$ "$SRC_FILE"
/bin/mv -f /tmp/dest.$$ "$DST_FILE"


