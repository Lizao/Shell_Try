#!/bin/bash

echo $1
cfile=` find $1 -name 'VR_*.h' `
for file in $cfile
do
    echo $file
    sed -i '$a/* EOF */' $file
done

cfile=` find $1 -name 'VR_*.cpp' `
for file in $cfile
do
    echo $file
    sed -i '$a/* EOF */' $file
done

