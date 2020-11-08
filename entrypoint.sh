#!/bin/sh
set -e
echo "Checking formatting for $GITHUB_REPOSITORY"

pylint $(find . -type f -name '*.py') $*
