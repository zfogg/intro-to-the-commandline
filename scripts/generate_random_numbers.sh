#!/bin/bash

amount_to_generate="${1:-1}"

for i in $(seq 0 $(( $amount_to_generate - 1))); do
  echo $(( $RANDOM % 100 + 1 ))
done
