#!/bin/sh

for i in 1 2 3 4 5 6 7 8
do
	for j in 1 2 3 4 5 6 7 8
	do
		S=$(((i+j)%2))
		if [ $S == 0 ]
		then
			echo -n "O "
		else
			echo -n "l "
		fi
	done
	echo ""
done
