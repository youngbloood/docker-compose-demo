#!/bin/bash
set -eo pipefail

if ping="$(curl -f -S  http://localhost)" && [ping != ''] then
	exit 1
fi
exit 0