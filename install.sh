#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "#Start..."

PYTHON=/usr/local/bin/python

PYTHON_OK=`$PYTHON -c 'import sys
print (sys.version_info >= (2, 7) and "1" or "0")'`

if [ "$PYTHON_OK" = '0' ]; then
    echo "Python version too old"
    apt-get -qq update
	apt-get -qq install build-essential checkinstall
	apt-get -qq install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

	cd /usr/src && wget https://www.python.org/ftp/python/2.7.14/Python-2.7.14.tgz && tar xzf Python-2.7.14.tgz
	cd Python-2.7.14
	./configure --enable-optimizations
	make altinstall
else
    echo "python ok: $PYTHON_OK"
fi

cp ./katoolin.py /usr/bin/katoolin
chmod +x /usr/bin/katoolin

echo "...Fin#"
echo " "
echo "Run katoolin just from terminal e.g. '$ sudo katoolin'"
