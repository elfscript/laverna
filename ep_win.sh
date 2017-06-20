#!/bin/bash
sudo rm -rf epdist
sudo rm -rf .wine

echo $@
docker run --rm  --name mylaverna -v $(pwd):/mnt/work  -w /mnt/work \
	 --entrypoint electron-packager 3hdeng/laverna:wine \
   . $npm_package_productName --out=epdist --ignore='^/epdist$' \
     --ignore='^/node_modules/asar$' \
     --ignore='^/app$|^/gulps$|^/test$' --ignore='^/.*\.zip$' \
     --ignore='^/.*\.tgz$' \
     --prune --asar  --overwrite --platform=win32 --arch=x64  --electronVersion=$npm_package_electronVersion

#--asar

cd epdist && sudo zip -r la_win.zip laverna-win32-x64 && \
  sudo mv la_win.zip ../laverna_win.zip && \
  sudo chown elf:elf ../laverna_win.zip

#cd epdist &&  mv la_win.zip ../laverna_win.zip



