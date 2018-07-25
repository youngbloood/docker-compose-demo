#!/bin/bash
set -eo pipefail

if ping="$(curl -f http://localhost:9090/api/ping)" && [ "$ping" = 'pong' ]; then
	exit 0
fi

exit 1