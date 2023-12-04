#!/bin/env bash

run_all () {
	folders=$(find aoc2023/*/index.js)
	declare -i day=1
	for folder in $folders
	do
		echo "Day $day:"
		node $folder
		echo ""
		day=day+1
	done
}

if [ -z $1 ]; then
	read -p "Enter day to run (or a̲l̲l̲): " day
	clear
	
	if [ $day == "all" ]; then
		run_all
	else
		node ./aoc2023/day$day
	fi
else
	if [ $1 == "all" ]; then
 		run_all
   	else
		node ./aoc2022/day$1
  	fi
fi