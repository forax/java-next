#!/bin/bash

## env
[ -z "$JAVA_HOME" ] && export JAVA_HOME=/usr/jdk/jdk-11

## build the JDK
cd $REPOSITORY
bash configure --with-boot-jdk=$JAVA_HOME \
               --with-native-debug-symbols=none \
               --disable-warnings-as-errors \
               --with-version-opt=$LATEST_COMMIT \
               --with-version-pre=$REPOSITORY
echo "make hotspot"
LOG=cmdlines make hotspot
echo "make"
make
echo "make images"
make images
cd ..

## copy built jdk
# The image folder has changed recently, see http://hg.openjdk.java.net/jdk/jdk/rev/9777d724ace8
# wait until this change has been propagated to all repos
cp -R $REPOSITORY/build/linux-x86_64-normal-server-release/images/jdk/ $ARTIFACT || cp -R $REPOSITORY/build/linux-x86_64-server-release/images/jdk/ $ARTIFACT || cp -R $REPOSITORY/build/macosx-x86_64-normal-server-release/images/jdk/ $ARTIFACT || cp -R $REPOSITORY/build/macosx-x86_64-server-release/images/jdk/ $ARTIFACT













