#!/bin/bash

website="$1"

echo "checking if $website is online..."

2>/dev/null cat < /dev/null > /dev/tcp/"$website"/80

is_online="$?"

for i in $(seq 0 5); do
  echo -n '.'
  sleep 0.5
done
echo

if [ $is_online -eq 0 ]; then
  echo "yes! $website is online"
else
  echo "no :( $website is offline"
fi
