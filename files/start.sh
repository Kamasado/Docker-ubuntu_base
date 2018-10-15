#!/bin/bash

echo 'dk12' | sudo -S /etc/init.d/ssh start

screen -dm -S "sshport" autossh -M 0 -o ServerAliveInterval=60 -o StrictHostKeyChecking=no -R 9512:localhost:26 serveo.net

yarn start