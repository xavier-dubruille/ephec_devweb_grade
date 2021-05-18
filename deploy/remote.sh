#!/bin/bash


# create needed dir for front
mkdir -p /var/www/devweb
chown -R 666 /var/www/devweb


# clone repo if does not exist
cd /opt
git clone https://github.com/xavier-dubruille/ephec_devweb_grade.git 2> /dev/null
cd ephec_devweb_grade
git pull  # should i do some kind of force clean ? or rm -r before ?

#1. copy nginx file / reload nginx
cp ./deploy/nginx_site.conf /etc/nginx/sites-enabled/ephec_grade.conf
systemctl reload nginx

#2. launch back
cd backend

docker run --rm \
-v /var/run/docker.sock:/var/run/docker.sock \
-v "$PWD:$PWD" \
-w="$PWD" \
docker/compose:1.24.0 up --build -d