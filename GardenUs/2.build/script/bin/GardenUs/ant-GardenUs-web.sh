#!/bin/bash

pushd . >& /dev/null

cd /home/www/bin/GardenUs
pwd
../git-chk jayMinOh GardenUs master

cd /home/DATA/www/GardenUs
pwd
ant -f ./build/build.xml dist

popd >& /dev/null
~