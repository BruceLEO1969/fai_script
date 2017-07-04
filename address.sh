#!/bin/bash

#curl -s freeapi.ipip.net/$(dig +noall +answer ${1} | awk '{print $NF}') | jq '.[] | tostring | select(length > 0)' --raw-output | sed ':a;N;$!ba;s/\n/, /g'

ip=$(dig +noall +answer ${1} | awk '{print $NF}')
location=$(curl -s freeapi.ipip.net/${ip} | jq '.[] | tostring | select(length > 0)' --raw-output | sed ':a;N;$!ba;s/\n/, /g')

echo ${ip}:
echo ${location}
