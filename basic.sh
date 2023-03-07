#! /usr/bin/bash

#echo "hello"   // print 
#echo "$#"    // argument countr shows how many argument passed
#echo "$@"    // show all arguments used in script
#echo "$1"   // argument number 1 and so on...


if  [ -f $1 ]
then
	echo "its file"
elif [ -d $1 ]
then 
	echo "its directory"
else 
	echo "fuck off"
fi
exit 0

