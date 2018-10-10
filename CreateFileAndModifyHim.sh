#!/bin/bash

function addInfoInFileByTimer
{
	cnt=$1
	file=$2
	while [ $cnt -gt 0 ]
	do
		echo "A" >> $file
		cnt=$[ $cnt - 1 ]
		sleep 1
	done
}

cnt=$1
fileName=""
day=$(date +%j)
time=$(date +%k%M)
dayStr=""
timeStr=""
let dayStr+=$day
let timeStr+=$time

fileName=$dayStr-$timeStr

echo "Create and modify file:"
echo $fileName
touch $fileName
addInfoInFileByTimer $cnt $fileName
