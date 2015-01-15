#!/bin/bash

# package TiddlyDesktop into zip files

# run this after bld.sh

# Zip them up
pushd ./output/win32
zip -r ../tiddlydesktop-win32-0.0.4.zip *
popd
pushd ./output/win64
zip -r ../tiddlydesktop-win64-0.0.4.zip *
popd
pushd ./output/mac32
zip -r ../tiddlydesktop-mac32-0.0.4.zip *
popd
pushd ./output/mac64
zip -r ../tiddlydesktop-mac64-0.0.4.zip *
popd
pushd ./output/linux32
zip -r ../tiddlydesktop-linux32-0.0.4.zip *
popd
pushd ./output/linux64
zip -r ../tiddlydesktop-linux64-0.0.4.zip *
popd
