#!/bin/bash

export=""
while getopts 'e:' flag; do
  case "${flag}" in
    e) export="${OPTARG}" ;;
    *) echo "Unexpected option ${flag}" ;;
  esac
done

if [[ $export == "" ]]; then
  echo "Usage: -e <export directory>"
  exit 1
fi

docker run -idt --privileged -e "container=docker" -v $export:/data:rw -p 1094:1094 --name xrdisolde xrootd/isolde /sbin/init
