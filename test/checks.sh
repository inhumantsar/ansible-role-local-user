#!/bin/bash

echo "randomly selecting success or fail..."
if [ $((($RANDOM % 10 + 1))) -ge 5 ]; then
  echo "GREAT SUCCESS!"
  exit 0
else
  echo "TRAGIC FAILURE!"
  exit 1
fi
