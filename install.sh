#!/bin/bash

## env
[ -z "$LATEST_LWORD_COMMIT" ] && export LATEST_LWORD_COMMIT=ad6949f382f4

## download LWORD branch
if [ ! -f "$LATEST_LWORD_COMMIT.tar.bz2" ]; then
   wget http://hg.openjdk.java.net/valhalla/valhalla/archive/$LATEST_LWORD_COMMIT.tar.bz2   
fi

## unpack
bunzip2 $LATEST_LWORD_COMMIT.tar.bz2
tar xf $LATEST_LWORD_COMMIT.tar

## rename
mv valhalla-$LATEST_LWORD_COMMIT valhalla











