#!/bin/sh
# wait-for-postgres.sh

set -e

url="$1"

until $(curl --output /dev/null --silent --head --fail $url); do
  >&2 echo "Service '$url' not available yet - sleeping"
  sleep 1
done

>&2 echo "Service ready"
