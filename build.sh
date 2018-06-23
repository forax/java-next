#!/bin/bash

## env
[ -z "$JAVA_HOME" ] && export JAVA_HOME=/usr/jdk/jdk-11
[ -z "$LATEST_LWORD_COMMIT" ] && export LATEST_LWORD_COMMIT=e5cec7364448

## download LWORD branch
wget http://hg.openjdk.java.net/valhalla/valhalla/archive/$LATEST_LWORD_COMMIT.tar.bz2

## unpack
bunzip2 $LATEST_LWORD_COMMIT.tar.bz2
tar xvf $LATEST_LWORD_COMMIT.tar

## rename
mv valhalla-$LATEST_LWORD_COMMIT valhalla

## build the JDK
cd valhalla
bash configure --with-boot-jdk=$JAVA_HOME --disable-warnings-as-errors
make images
cd ..

## rename builded jdk
export JAVA_HOME=valhalla/build/linux-x86_64-normal-server-release/jdk

## display version
$JAVA_HOME/bin/java -version










