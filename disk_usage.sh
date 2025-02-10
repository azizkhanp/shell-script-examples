#!/bin/bash
threshold=85
usage=$(df /aziz | grep /aziz | awk '{ print $5 }' | sed 's/%//' )

if [ "$usage" -ge "$threshold" ]; then
 echo "Disk usage is more than $threshold"
 fi
