#!/bin/bash

## env
[ -z "$JAVA_HOME" ] && export JAVA_HOME=/usr/jdk/jdk-11

## build the JDK
cd valhalla
bash configure --with-boot-jdk=$JAVA_HOME --disable-warnings-as-errors
echo "make hotspot"
make hotspot
echo "make"
make
echo "make images"
make images
cd ..

## rename builded jdk
export JAVA_HOME=valhalla/build/linux-x86_64-normal-server-release/jdk

## display version
$JAVA_HOME/bin/java -version










