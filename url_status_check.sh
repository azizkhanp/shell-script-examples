#!/bin/bash

url = "https://www.youtube.com/"

if ! curl -s --head --request GET "$url" | grep "200 OK" >/dev/null;then
echo "$(date): $url is down" >> status.logs
else
echo "$(date): $url is up" >> status.logs
fi
