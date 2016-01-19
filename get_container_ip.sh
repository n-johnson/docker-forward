#!/bin/bash

# Usage:
#  $ ./get_container_ip.sh some-running-container
#  172.17.0.2
     
docker inspect "$1" | grep '"IPAddress"' | head -n 1 | awk -F'"' '{print $4}'
