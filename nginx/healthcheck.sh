#!/bin/bash


if err="$(curl --help)" && ["$err" =~ "curl: not found"]; then
	apt update 
	apt install curl -y
fi

if ping="$(curl -f -S  http://localhost)" && ["$ping" != '']; then
	exit 1
fi
exit 0