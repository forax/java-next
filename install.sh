#!/bin/bash

## env
[ -z "$LATEST_LWORD_COMMIT" ] && export LATEST_LWORD_COMMIT=8b2ca4fdb101

## download LWORD branch
if [ ! -f "$LATEST_LWORD_COMMIT.tar.bz2" ]; then
   wget http://hg.openjdk.java.net/valhalla/valhalla/archive/$LATEST_LWORD_COMMIT.tar.bz2   
fi

## unpack
bunzip2 $LATEST_LWORD_COMMIT.tar.bz2
tar xf $LATEST_LWORD_COMMIT.tar

## rename
mv valhalla-$LATEST_LWORD_COMMIT valhalla











