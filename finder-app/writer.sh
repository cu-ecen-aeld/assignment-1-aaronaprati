#!/bin/sh

writefile=${1}

writestr=${2}

test=0

stupid=0

#fileCount=0

#matchCount=0

if [ -z "$writefile"  ]
then
	echo "You did not specify all the parameters"
	exit 1
elif [ -z "$writestr" ] 
then
	echo "You did not specify all the parameters"
	exit 1
else
	stupid=$(dirname $writefile) 
	# fileCount=$(ls $filesdir | wc -l)
	mkdir -p $stupid
	touch $writefile
	echo "$writestr" > $writefile
	# matchCount=$(find $filesdir -name $searchstr | wc -l)
	# echo "The number of files are  $fileCount and the  number of matching lines is $matchCount"
	test=$(cat "$writefile")
fi
	if [ -z "$test" ]
	then
		echo "Failed to write file"
		exit 1
	else
		exit 0
	fi 
