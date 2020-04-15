#!/bin/bash

## clone the repository
git clone https://github.com/openjdk/$REPOSITORY.git

## go into the repository
cd $REPOSITORY

## change branch
git checkout $BRANCH

## get LAST_COMMIT
export LATEST_COMMIT=`git describe --tags`
echo $LATEST_COMMIT

## step back
cd ..











