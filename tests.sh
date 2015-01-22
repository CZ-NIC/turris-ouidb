#!/bin/sh

CASES="28:92:4a:ca:13:d9 28-92-4a-ca-13-d9 28924aca13d9 28.92.4a.ca.13.d9 28:92:4a:ca:13: 28:92:4a:ca:13:d 28:92-4a:ca:13:d9 28:92:4a:ca:13-d9"

for line in $CASES; do
	./ouidb "$line"
	echo $?
done
