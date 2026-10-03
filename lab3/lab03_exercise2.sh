#!/bin/bash

# this is a comment

date >> process_log.txt

# for loop to count to 10
for c in {1..5}; do
	echo "Count: $c" >> process_log.txt

	# if does not use == it uses -eq
	# note the spaces around if [ ]
	if [ $c -eq 3 ]; then
		echo "found the third item" >> process_log.txt
	fi
done

# how do we pass parameters from the command line
# into this bash script. 
# we use the notation $1, $2 etc to represent
# the first, second etc parameter into this script
if [ -z $1 ]; then
	echo "You didn't pass any paraemters to $0" >> process_log.txt
else
	echo "You passed in $1 to $0" >> process_log.txt 
fi

# heres a brand new command: 
# it calls ps -ef, then pipes it into word counter
# then stores the result in ct
ct=$(ps -ef | wc -l)



if [ $ct -gt $1 ]; then
	echo "Maximum number of precesses exceeded" >> process_log.txt
else
	echo "The maximum number of processes NOT exceeded" >> process_log.txt
fi

echo "There are $ct processes running on this machine" >> process_log.txt
