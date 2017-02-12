#!/bin/bash
set -e
eval "$($(dirname $0)/adr-config)"

for f in $(cd "$adr_bin_dir" && find . -name 'adr-*')
do
	if [ -x "$adr_bin_dir/$f" ]
	then
		echo "$f" | cut -c 7-
	fi
done
