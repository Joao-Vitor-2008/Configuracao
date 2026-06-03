#!/bin/sh

while true; do
  date=$(date +'%A, %b, %d')
  time=$(date +'%H, %M, %S')

  echo "$date | $time"
  sleep 1
done
