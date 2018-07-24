#!/bin/sh
if [ -d /static/ ]; then
    chown -R 10000:10000 /static/ 
fi
./web