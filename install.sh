#!/bin/bash

## download correct branch
if [ ! -f "$LATEST_COMMIT.tar.bz2" ]; then
   wget http://hg.openjdk.java.net/$HG_REPOSITORY/$REPOSITORY/archive/$LATEST_COMMIT.tar.bz2   
fi

## unpack
bunzip2 $LATEST_COMMIT.tar.bz2
tar xf $LATEST_COMMIT.tar

## rename
mv $REPOSITORY-$LATEST_COMMIT $REPOSITORY











