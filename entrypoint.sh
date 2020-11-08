#!/bin/sh
set -e
echo "Checking formatting for $GITHUB_REPOSITORY"
ls -l
sh -c "pylint ./**/*.py $*"
