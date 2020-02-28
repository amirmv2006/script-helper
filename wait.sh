#!/bin/sh
# wait-for-postgres.sh

set -e

host="$1"

until $(curl --output /dev/null --silent --head --fail http://$host); do
  >&2 echo "Service '$host' not available yet - sleeping"
  sleep 1
done

>&2 echo "Service ready"
