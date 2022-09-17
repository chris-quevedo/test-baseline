#!/bin/bash

echo "Updating Baseline"
cd $(git rev-parse --show-toplevel)
DP_errors=$(find src/DP -type f)
IP_errors=$(find src/IP -type f)

echo ${DP_errors} > Baseline/DP/index.txt
echo ${IP_errors} > Baseline/IP/index.txt
