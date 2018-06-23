#!/bin/bash

## env
[ -z "$JAVA_HOME" ] && export JAVA_HOME=/usr/jdk/jdk-11

## build the JDK
cd valhalla
bash configure --with-boot-jdk=$JAVA_HOME --disable-warnings-as-errors
echo "make hotspot"
LOG=cmdlines make hotspot
echo "make"
make
echo "make images"
make images
cd ..

## copy built jdk
cp -R valhalla/build/linux-x86_64-normal-server-release/images/jdk/ jdk-11-lworld











