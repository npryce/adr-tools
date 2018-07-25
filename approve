#!/bin/bash
set -e

test="${1:?test}"

test_name=$(basename $test | sed 's/\..*//')

cp -v /tmp/adr-tools-build/tests/$test_name.output tests/$test_name.expected
