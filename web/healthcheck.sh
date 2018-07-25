#!/bin/bash
set -eo pipefail

echo $port

if ping="$(curl  -X POST  http://127.0.0.1:$port/api/ping)" && [ "$ping" = 'pong' ]; then
	exit 0
fi

exit 1