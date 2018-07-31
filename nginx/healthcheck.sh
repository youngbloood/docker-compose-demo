#!/bin/bash


if err="$curl" && ["$curl" =~ "curl: not found"]; then
	apk add --no-cache curl
fi

if ping="$(curl -f -S  http://localhost)" && ["$ping" != '']; then
	exit 1
fi
exit 0