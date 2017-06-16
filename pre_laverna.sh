#!/bin/bash
cd /mnt/work
#install bower and gulp locally  besides globally
npm install bower
npm install gulp

# Install Laverna's dependencies:
npm install
bower install
cd test
bower install
cd ..

gulp build
