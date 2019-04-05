#!/bin/bash

echo Sending to: $1
echo Message: $2

# cd ~/yowsup
python3 /root/yowsup/yowsup-cli demos --config /config/yowsup.conf --send $1 "$2"

