#!/bin/bash

website="$1"

echo "checking if $website is online..."

 2>/dev/null cat < /dev/null > /dev/tcp/"$website"/80

for i in $(seq 0 5); do
  echo -n '.'
  sleep 1
done
echo

if [ $? -eq 0 ]; then
 echo "yes! $website is online"
else
 echo "no :( $website is offline"
fi