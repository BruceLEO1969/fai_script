#!/bin/bash

if [[ "$1" =~ ^([0-9]{1,3}.){3}[0-9]{1,3}$  ]]
then
  ip=$1
else
  ip=$(dig +noall +answer ${1} | awk '$4=="A" {print $NF}')
fi

location=$(curl -s freeapi.ipip.net/${ip} | sed 's/"//g; s/,/ /g; s/  / /g')
echo -e ${ip}'\t\t'${location}"')
