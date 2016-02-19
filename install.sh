#!/bin/bash

# needs sudo privileges; look at code first though!

if [[ $# -ne 0 ]]; then
	if [[ $1 = '-r' ]]; then
		unlink /bin/rmpp
		unlink /bin/unrm
		unlink /bin/rmdirpp
		unlink /bin/emptytrash
		unlink /bin/lstrash
		exit 0
	fi
fi

PATHDIR=/usr/bin

ln -s $(pwd)/rmpp $PATHDIR/rmpp
ln -s $(pwd)/unrm $PATHDIR/unrm
ln -s $(pwd)/rmdirpp $PATHDIR/rmdirpp
ln -s $(pwd)/emptytrash $PATHDIR/emptytrash
ln -s $(pwd)/lstrash $PATHDIR/lstrash
ln -s $(pwd)/rmpp.conf /etc/rmpp.conf
