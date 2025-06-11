#!/bin/bash

url = "www.youtube.com"

if ! curl -s --head --request GET "$url" | grep "200 OK" >/dev/null;then
echo "$(date): $url is down" >> status.logs
else
echo "$(date): $url is up" >> status.logs
fi

---------------------------------------------------------------------------------

#!/bin/bash

url="www.google.com"

# Repeat 3 times (i.e., check every 5 minutes for 15 minutes total)
for i in {1..3}; do
  if ! curl -s --head --request GET "$url" | grep "200 OK" > /dev/null; then
    echo "$(date): $url is down" >> status.logs
  else
    echo "$(date): $url is up" >> status.logs
  fi

  # Wait for 5 minutes (300 seconds) before next check
  sleep 300
done
