#!/bin/sh

FILE="$1"

if [ -z "$FILE" ]; then
	echo Usage error: "Provide path to OUI data file"
	exit 1
fi

cat "$FILE" | sed -n 's/^[[:space:]]*\([0-9a-fA-F]\{6\}\)[[:space:]]*(base 16)[[:space:]]*\(.*\)$/\1,\2/p'
