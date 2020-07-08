#!/bin/bash

# the variable "$@" is all the arguments we pass
numbers=${@:-/dev/stdin}

if [ -f "$numbers" ]; then
  #nl "$numbers"
  numbers=$(cat "$numbers" | tr '\r' ' ')
else
  numbers=$(echo "$numbers" | xargs printf '%s\n')
fi

sorted_numbers=$(echo "$numbers" | sort -n -k1,1)

uniq_numbers=$(echo "$sorted_numbers" | uniq)

uniq_numbers_columned=$(echo "$sorted_numbers" | uniq -c | column -t)


>&2 echo "count" "number" | column -t

echo "$uniq_numbers_columned"

>&2 echo "total numbers:  "  $(echo $numbers        | wc -w)
>&2 echo "unique numbers: "  $(echo $uniq_numbers   | wc -w)