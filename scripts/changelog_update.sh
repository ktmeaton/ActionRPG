#!/bin/bash

base="a58299c5160"
tags=`git tag | tr '\n' ' '`
head="HEAD"

arr_ver=($base $tags $head)
num_ver=${#arr_ver[@]}

# An obscure way to reverse a list
arr_ver=(`for ((i=${num_ver}-1; i>=0; i--));  do echo ${arr_ver[$i]}; done | tr '\n' ' '  `)
prev_ver=${arr_ver[0]}

# Remove old changelog
if [[ -f CHANGELOG.md ]]; then
    rm CHANGELOG.md
fi

for ((i=1; i<${num_ver}; i++));
do
  cur_ver=${arr_ver[$i]}

  scripts/notes_release.sh ${cur_ver} ${prev_ver} >> CHANGELOG.md

  prev_ver=$cur_ver

done