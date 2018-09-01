#!/bin/bash

## env
[ -z "$JAVA_HOME" ] && export JAVA_HOME=/usr/jdk/jdk-11

## build the JDK
cd $REPOSITORY
bash configure --with-boot-jdk=$JAVA_HOME --with-native-debug-symbols=none --disable-warnings-as-errors --with-version-build=$LATEST_COMMIT
echo "make hotspot"
LOG=cmdlines make hotspot
echo "make"
make
echo "make images"
make images
cd ..

## copy built jdk
cp -R $REPOSITORY/build/linux-x86_64-normal-server-release/images/jdk/ $ARTIFACT











