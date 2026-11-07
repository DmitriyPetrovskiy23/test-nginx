#!/usr/bin/env bash

url="${1:-http://127.0.0.1}"

if curl --fail --silent --show-error --max-time 5 --output /dev/null "$url"; then
	echo "OK: $url"
	exit 0
else
	code=$?
	echo "FAIL: $url (код curl: $code)" >&2
	exit "$code"
fi
