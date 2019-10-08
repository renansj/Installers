#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

command -v curl >/dev/null 2>&1 || { echo "curl is required but it's not installed.  Aborting." >&2; exit 1; }

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
apt-get update && apt-get install code