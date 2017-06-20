#!/bin/bash
sudo rm -rf epdist
sudo rm -rf .wine
echo $@
docker run --rm  --name mylaverna -v $(pwd):/mnt/work  -w /mnt/work \
	 --entrypoint electron-packager 3hdeng/laverna:4.7 \
  .  $npm_package_productName --out=epdist --ignore='^/epdist$' \
    --ignore='^/node_modules/asar$' \
     --ignore='^/app$' --ignore='^/.*\.zip$' \
     --ignore='^/.*\.tgz$' \
  --prune --overwrite --platform=linux --arch=x64 \
  --icon=assets/icons/png/1024x1024.png


# --version=$npm_package_electronVersion

cd epdist && sudo tar czvf la_linux.tgz laverna-linux-x64 && \
  sudo  mv la_linux.tgz ../laverna_linux.tgz && \
  sudo chown elf:elf ../laverna_linux.tgz


#cd epdist &&  mv la_win.zip ../laverna_win.zip



