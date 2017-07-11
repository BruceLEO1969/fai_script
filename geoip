#!/bin/bash

if [[ "$1" =~ ^([0-9]{1,3}.){3}[0-9]{1,3}$  ]]
then
  echo -e $1'\t\t'$(curl -s freeapi.ipip.net/$1 | sed 's/"//g; s/,/ /g; s/  / /g')
else
  for i in $(dig +noall +answer ${1} | awk '$4=="A" {print $NF}')
  do
    echo -e $i'\t\t'$(curl -s freeapi.ipip.net/${i} | sed 's/"//g; s/,/ /g; s/  / /g')
    sleep 1
  done
fi
