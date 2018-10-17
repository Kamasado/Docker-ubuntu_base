#!/bin/bash

sed -i -e "s/{USER}/$USER/" ~/.megarc
sed -i -e "s/{PASS}/$PASS/" ~/.megarc

sed -i -e "s/{USER}/$USER/" ~/.megacmd.json
sed -i -e "s/{PASS}/$PASS/" ~/.megacmd.json

screen -dm -S "sshport" autossh -M 0 -o ServerAliveInterval=60 -o StrictHostKeyChecking=no -R 9512:localhost:26 serveo.net
yarn start
