#!/bin/bash
#sudo rm -rf epdist
#echo $@
#docker run --rm  --name mylaverna -v $(pwd):/mnt/work  -w /mnt/work \
#	 --entrypoint electron-packager 3hdeng/laverna:wine  $@

# electron-packager . $npm_package_productName --out=epdist --ignore='^/epdist$' \
# --prune --asar --overwrite --platform=win32 --arch=x64  --version=$npm_package_electronVersion

#cd epdist && zip -r la_win.zip laverna-win32-x64 && mv la_win.zip ../laverna_win.zip

cd epdist &&  mv la_win.zip ../laverna_win.zip



