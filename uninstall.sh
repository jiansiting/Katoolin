#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "#Start by using katoolin and choose remove repositories and installs."

bash ./usr/bin/katoolin &

read

rm -f /usr/bin/katoolin

echo "...Fin#"
