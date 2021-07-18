#!/bin/bash

# zaustavi sve kontejnere
echo '####################################################'
echo 'Stopping running containers (if available)...'
echo '####################################################'
docker stop $(docker ps -aq)

# obrisi sve kontejnere
echo '####################################################'
echo 'Removing containers ..'
echo '####################################################'
docker rm $(docker ps -aq)

# obrisi sve "image"
echo '####################################################'
echo 'Removing images ...'
echo '####################################################'
docker rmi $(docker images -q)

# obrisi sve zaostale volumene
echo '####################################################'
echo 'Revoming docker container volumes (if any)'
echo '####################################################'
docker volume rm $(docker volume ls -q)