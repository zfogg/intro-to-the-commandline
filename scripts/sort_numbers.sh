#!/bin/bash

# the variable "$@" is all the arguments we pass
numbers=${@:-/dev/stdin}


if [ -f "$numbers" ]; then
  # if "$numbers" is a file, make sure all the numbers on a single line
  numbers=$(cat "$numbers" | tr '\r' ' ')
else
  # otherwise put them on newlines
  numbers=$(echo "$numbers" | xargs printf '%s\n')
fi
# now this script works with files, stdin, and arguments


# numerically sort our numbers
sorted_numbers=$(echo "$numbers" | sort -n -k1,1)

# how many unique numbers are we considering?
uniq_numbers=$(echo "$sorted_numbers" | uniq)

# let's count how many times each number occurs
uniq_numbers_columned=$(echo "$sorted_numbers" | uniq -c | column -t)


# print out column headers
>&2 echo "count" "number" | column -t

# print out the results
echo "$uniq_numbers_columned"

# print out the summarized results
>&2 echo "total numbers:  "  $(echo $numbers        | wc -w)
>&2 echo "unique numbers: "  $(echo $uniq_numbers   | wc -w)
