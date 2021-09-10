#!/bin/bash
set -e

rm -f /myapp/tmp/pids/server.pid

echo "Passing '$@' to the container"
exec $@
