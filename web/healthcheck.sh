#!/bin/bash
set -eo pipefail

# if tool curl is exist ?
if ! hash curl 2>/dev/null; then
	apk add --no-cache curl
fi

# healthcheck
if ping="$(curl  -X POST  http://127.0.0.1:$port/api/ping)" && [ "$ping" = 'pong' ]; then
	exit 0
fi
exit 1