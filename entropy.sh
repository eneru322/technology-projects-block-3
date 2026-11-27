#!/bin/bash

for p in $(cat passwords.txt)
do
	len=${#p}
	entropy=$(echo "$len * 6" | bc)
	echo "$p : approximately $entropy bits"
done
