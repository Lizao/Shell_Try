#!/bin/bash

echo $1
cfile=` find $1 -name 'VR_*.h' `
for file in $cfile
do
    cat copy_right.txt|
    while read line
    do        
	echo $line
	sed -i "/#ifndef CXX_VR_*/i $line" $file
	
    done
done

