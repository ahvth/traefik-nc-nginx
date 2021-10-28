#!/bin/bash

mkdir letsencrypt
mkdir nextcloud
docker network create web
docker-compose up -d
# give docker and nextcloud some time to deploy and populate nextcloud folder
echo "Please wait..." && sleep 120
echo "Done."

