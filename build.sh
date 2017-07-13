#!/bin/bash

export LANG=C
export LC_ALL=C

. ./includes.sh

git pull | grep up-to-date 
if [ $? -eq 0 ]
then
  exit 0
fi

pdflatex -halt-on-error $SRC_FILE
if [ $? -ne 0 ]
then
  exit 1
fi

/bin/mv -f $SRC_FILE /tmp/source.$$
/bin/mv -f $DST_FILE /tmp/dest.$$
/bin/rm -f $PROJECT.*
/bin/mv -f /tmp/source.$$ $SRC_FILE
/bin/mv -f /tmp/dest.$$ $DST_FILE


