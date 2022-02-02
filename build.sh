#!/bin/bash

cd 素材
for item in `find . -name "*.tex"`
do
    echo "$item"
    path=$(dirname $item)
    file=$(basename $item)
    cd $path
    xelatex "$file"
    xelatex "$file"
    cd -
done

