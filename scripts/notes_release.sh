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

# Check if NEW_VER is head
if [[ ${NEW_VER} == "HEAD" ]]; then
  old_num=`echo ${OLD_VER} | cut -d "." -f 2`;
  new_num=`expr ${old_num} + 1`;
else
  new_num=`echo ${NEW_VER} | cut -d "." -f 2`;
fi

# Have a separate var for string formatting episode
new_ep=${new_num};

# Add a 0 for formatting under ver 10
if [[ ${new_num} -le 10 ]]; then
  new_ep="0${new_ep}"
fi

# ----------------
# Episode Header
echo "## Episode ${new_ep}"
echo

# ----------------
# PR Header
if [[ ${NEW_VER} != "HEAD" && $ver_pr ]]; then
  echo "### [Pull Request](https://github.com/ktmeaton/ActionRPG/pull/${ver_pr})"
  echo
fi

# ----------------
# Notes Header
echo "### Notes"
echo
grep -r '[0-9]\. ' docs/Episode_${new_ep}.md
echo

# ----------------
# Commits Header
echo "### Commits"
echo
scripts/notes_commits.sh ${OLD_VER} ${NEW_VER}
echo  
