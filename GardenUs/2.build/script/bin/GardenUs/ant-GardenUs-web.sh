#!/bin/bash

pushd . >& /dev/null

cd /home/www/bin/GardenUs
pwd
../git-chk jayMinOh GardenUs master

cd /home/DATA/www/GardenUs
pwd
ant -f ./GardenUs/build/build-web.xml dist

popd >& /dev/null
~