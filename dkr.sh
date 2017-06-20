#!/bin/bash
ver=4.7
if [[ "$#" == "1" ]]; then
	  ver=$1
  fi
echo $ver

docker run -it --rm -u root  --name mylaverna \
  -v $(pwd):/mnt/work  -w /mnt/work \
  -p 8888:9000 -p 3001:3001 \
  3hdeng/laverna:$ver \
  /bin/bash


#    -v $gitRepo:/opt/$USER/repos \
#    -e "OPTION_NAME=OPTION_VALUE" \
