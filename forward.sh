#!/bin/bash

isSet() {
  [ -n "$1" ]
}

if isSet "$PORT_LOCAL" && isSet "$PORT_REMOTE" && isSet "$ADDRESS_REMOTE"; then
  echo "Starting port forward from $PORT_LOCAL to $ADDRESS_REMOTE:$PORT_REMOTE"
  socat tcp-listen:"$PORT_LOCAL",reuseaddr,fork tcp:"$ADDRESS_REMOTE":"$PORT_REMOTE"
else
  echo "MISSING ENVIROMENT VARIABLE:"
  isSet "$PORT_LOCAL" || echo -e "\tPORT_LOCAL"
  isSet "$PORT_REMOTE" || echo -e "\tPORT_REMOTE"
  isSet "$ADDRESS_REMOTE" || echo -e "\tADDRESS_REMOTE"
  exit 1
fi
