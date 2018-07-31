#!/bin/bash

# if tool curl is exist ?
if ! hash curl 2>/dev/null; then
	apt update 
	apt install curl -y
fi

# healthcheck
if ping="$(curl -f -S  http://localhost)" && ["$ping" != '']; then
	exit 1
fi
exit 0