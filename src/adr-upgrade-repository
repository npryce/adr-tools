#!/bin/bash
set -e
eval "$($(dirname $0)/adr-config)"

## usage: adr upgrade-repository
##
## Upgrades the ADR documents to the latest format.

for f in $("$adr_bin_dir/adr-list")
do
	# Upgrade date format to ISO 8601
	sed -E -e 's+Date: ([0-9]{2})/([0-9]{2})/([0-9]{4})+Date: \3-\2-\1+' "$f" > "$f.upgraded"
	mv "$f.upgraded" "$f"
done
