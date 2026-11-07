#!/usr/bin/env bash

url="${1:-http://127.0.0.1}"

curl --fail --silent --show-error --max-time 5 --output /dev/null "$url"
