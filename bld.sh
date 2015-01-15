#!/bin/bash

# build TiddlyDesktop

# Remove any old build
rm -Rf output
rm -Rf source/tiddlywiki

# Get the correct version of TiddlyWiki and copy to source/tiddlywiki
# npm install
npm install ../TiddlyWiki5
cp -R node_modules/tiddlywiki source/tiddlywiki

# Create the output directory
mkdir -p output
mkdir -p output/mac32
mkdir -p output/mac64
mkdir -p output/win32
mkdir -p output/win64
mkdir -p output/linux32
mkdir -p output/linux64

# OS X 64-bit App
cp -R node-webkit/node-webkit-v0.11.5-osx-x64/node-webkit.app output/mac64/TiddlyWiki.app
cp -R source output/mac64/TiddlyWiki.app/Contents/Resources/app.nw
cp icons/app.icns output/mac64/TiddlyWiki.app/Contents/Resources/nw.icns
cp Info.plist output/mac64/TiddlyWiki.app/Contents/Info.plist

# OS X 32-bit App
cp -R node-webkit/node-webkit-v0.11.5-osx-ia32/node-webkit.app output/mac32/TiddlyWiki.app
cp -R source output/mac32/TiddlyWiki.app/Contents/Resources/app.nw
cp icons/app.icns output/mac32/TiddlyWiki.app/Contents/Resources/nw.icns
cp Info.plist output/mac32/TiddlyWiki.app/Contents/Info.plist

# Windows 64-bit App
cp -R node-webkit/node-webkit-v0.11.5-win-x64/* output/win64
cp -R source/* output/win64

# Windows 32-bit App
cp -R node-webkit/node-webkit-v0.11.5-win-ia32/* output/win32
cp -R source/* output/win32

# Linux 64-bit App
cp -R node-webkit/node-webkit-v0.11.5-linux-x64/* output/linux64
cp -R source/* output/linux64

# Linux 32-bit App
cp -R node-webkit/node-webkit-v0.11.5-linux-ia32/* output/linux32
cp -R source/* output/linux32
