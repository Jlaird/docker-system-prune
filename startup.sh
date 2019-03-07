#!/bin/bash

if [ ! -e "/var/run/docker.sock" ]; then
    echo "No Docker Socket!"
    exit 1
fi

while [ true ]; do
echo "Waiting ${DELAY} seconds before next purge"
    docker system prune -af
    sleep ${DELAY} & wait
done