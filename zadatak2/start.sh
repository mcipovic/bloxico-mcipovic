#!/bin/bash
###########################################
#
# Simple Shell script to start all container/images
#
#

echo '####################################################'
echo 'Starting everything ...'
echo '####################################################'
docker-compose -f docker-compose.yml up -d