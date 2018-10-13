#!/usr/bin/env bash

echo "Setup openrc ..." && openrc && touch /run/openrc/softlevel
echo Starting ssh service...
rc-service sshd start

if [ ! -d /home/site/wwwroot ]
then
    mkdir -p /home/site/wwwroot
fi
