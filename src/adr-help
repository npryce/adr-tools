#!/bin/bash
set -e
eval "$($(dirname $0)/adr-config)"

## usage: adr help [COMMAND [SUBCOMMAND...]]
##
## If COMMAND and any SUBCOMMANDs are given, displays help for that command. 
## Otherwise lists the available commands.
##
## Uses the environment variables ADR_PAGER or PAGER (in that order) to
## specify the command to be used to display the help text.  The default
## pager is: more.

pager="${ADR_PAGER:-${PAGER:-more}}"

("$adr_bin_dir/_adr_help" "$@") | $pager
