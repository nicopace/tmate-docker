#!/bin/sh
cd /tmate-slave
if [ -n "${HOST}" ]; then
  hostopt="-h ${HOST}"
fi
LD_LIBRARY_PATH=/usr/local/lib ./tmate-slave $hostopt -p ${PORT?2222} 2>&1
