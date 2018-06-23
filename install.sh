#!/bin/bash

## env
[ -z "$LATEST_LWORD_COMMIT" ] && export LATEST_LWORD_COMMIT=e5cec7364448

## download LWORD branch
[ -f "$LATEST_LWORD_COMMIT.tar.bz2"] && wget http://hg.openjdk.java.net/valhalla/valhalla/archive/$LATEST_LWORD_COMMIT.tar.bz2

## unpack
bunzip2 $LATEST_LWORD_COMMIT.tar.bz2
tar xf $LATEST_LWORD_COMMIT.tar

## rename
mv valhalla-$LATEST_LWORD_COMMIT valhalla











