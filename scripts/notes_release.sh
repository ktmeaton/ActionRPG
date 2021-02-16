#!/bin/bash

# First ="a58299c51609ad"
OLD_VER=$1
NEW_VER=$2
BASE="https://github.com/ktmeaton/ActionRPG/commit"

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

echo "## Episode ${new_ep}"
echo ""

echo "### [Pull Request](https://github.com/ktmeaton/ActionRPG/pull/${new_num})"
echo ""

echo "### Notes"
echo ""
scripts/notes_major.sh docs/Episode_${new_ep}.md
echo ""

git log --pretty=oneline --abbrev-commit ${OLD_VER}..${NEW_VER} | \
  while read line;
  do
    hash=`echo $line | cut -d " " -f 1`
    msg=`echo $line | sed "s/$hash //g"`
    echo -e "* \`\`\`[$hash]($BASE/$hash)\`\`\` $msg";
  done;
 
