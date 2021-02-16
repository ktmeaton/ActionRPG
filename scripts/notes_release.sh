#!/bin/bash

# First ="a58299c51609ad"
OLD_VER=$1
NEW_VER=$2
BASE="https://github.com/ktmeaton/ActionRPG/commit"

# ----------------
# PR info

# Retieve PR hashes
arr_pr_commits=( `git ls-remote origin 'pull/*/head' | awk '{print substr($1,1,7)}' | tr '\n' ' ' ` )
pr_id=( `git ls-remote origin 'pull/*/head' | cut -f 2 | cut -d "/" -f 3 | tr '\n' ' ' ` )
num_pr=${#arr_pr_commits[@]}

# Retrieve commit hashes
arr_new_ver_commits=( $(scripts/notes_commits.sh ${OLD_VER} ${NEW_VER} | cut -d '`' -f 4 | tr '\n' ' ') )

# Search for matching PR
for commit in ${arr_new_ver_commits[@]}; do
  for ((i=0; i<num_pr; i++)); do
    pr=${arr_pr_commits[$i]}
    if [[ $pr == $commit ]]; then
      ver_pr=${pr_id[$i]};
    fi;
  done
done

# ----------------
# Version Parsing
if [[ $NEW_VER == "HEAD" ]]; then
  target_ver=$OLD_VER
else
  target_ver=$NEW_VER
fi

arr_ver=(`echo ${target_ver} | sed 's/v//g'  | tr '.' ' '`)
major=${arr_ver[0]}
minor=${arr_ver[1]}
patch=${arr_ver[2]}

if [[ $NEW_VER == "HEAD" ]]; then
  ep="Development" 
else
  ep="Episode $minor.$patch" 
fi

# ----------------
# Episode Header
echo "## ${ep}"
echo

# ----------------
# PR Header
if [[ $ver_pr ]]; then
  echo "### [Pull Request](https://github.com/ktmeaton/ActionRPG/pull/${ver_pr})"
  echo
fi

# ----------------
# Notes Header
if [[ $patch != 0 ]]; then
  target_notes=docs/Episode_$minor-$patch.md
else
  target_notes=docs/Episode_$minor.md
fi

if [[ -f $target_notes ]]; then
  echo "### Notes"
  echo
  grep -r '[0-9]\. ' $target_notes
  echo
fi

# ----------------
# Commits Header
echo "### Commits"
echo
scripts/notes_commits.sh ${OLD_VER} ${NEW_VER}
echo  
