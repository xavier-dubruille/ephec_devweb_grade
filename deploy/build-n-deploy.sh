#!/bin/bash


# 1. remote (i do it first only because it does not need to wait the end of "ng build"
ssh root@54.38.181.241 'bash -s' < ./remote.sh

echo "=== back script has been run, let's ng build now ==="

# 2. build and publish front
cd ../frontend || exit
#git describe --tags HEAD > src/assets/version.txt && \
ng build && \
rsync -a ./dist/frontend/* root@54.38.181.241:/var/www/devweb
#rm src/assets/version.txt

