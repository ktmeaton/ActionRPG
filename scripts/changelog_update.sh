#!/bin/bash

OLD_VER=`git tag | tail -n2 | head -n1`
NEW_VER=`git tag | tail -n1`

echo -e "$(scripts/notes_release.sh ${OLD_VER} ${NEW_VER})\n\n$(cat CHANGELOG.md)"