#!/usr/bin/env bash

timeout 10s make test 2> /dev/null > /dev/null
line=$( adb logcat -d I | grep -m1 "strlen(" )

if [ ! -z "$line" ]; then
    echo "$line" | sed "s/^.*str=\"\([a-z0-9]\+\)\".*$/\1/"
else
    echo "Not found. Try again."
    exit 1
fi