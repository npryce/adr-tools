#!/bin/sh -e
version=$1

if [ -z ${version} ]
then
    echo "ERROR no tag given; last tag:" `git tag -l | grep -E '[0-9]+(.[0-9]+){2}' | sort -t. -k 1,1nr -k 2,2nr -k 3,3nr | head -1`
    exit 1
else
    git tag -u sw@natpryce.com ${version} -m "tagging version ${version}"
fi
