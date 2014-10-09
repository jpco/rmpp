#!/bin/bash

# needs sudo privileges; look at code first though!

if [[ $# -ne 0 ]]; then
	if [[ $1 = '-r' ]]; then
		unlink /bin/rmpp
		unlink /bin/unrm
		unlink /bin/rmdirpp
		unlink /bin/emptytrash
		exit 0
	fi
fi

ln -s $(pwd)/rmpp /bin/rmpp
ln -s $(pwd)/unrm /bin/unrm
ln -s $(pwd)/rmdirpp /bin/rmdirpp
ln -s $(pwd)/emptytrash /bin/emptytrash
ln -s $(pwd)/rmpp.conf /etc/rmpp.conf
