#!/bin/sh
if [ -d /web/static/ ]; then
    chown -R 10000:10000 /web/static/ 
fi
./web