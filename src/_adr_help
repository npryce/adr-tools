#!/bin/bash
set -e
eval "$($(dirname $0)/adr-config)"

cmds=("$@")

if (( ${#@} == 1 ))
then
	cmdexe="$adr_bin_dir/adr-$1"
elif (( ${#@} > 1 ))
then
	cmdexe="$adr_bin_dir/_adr_$(IFS=_; echo "${cmds[*]}")"
fi

helpexe="$adr_bin_dir/_adr_help_$(IFS=_; echo "${cmds[*]}")"

if [ -z "$cmds" -o \( ! -x "$cmdexe" -a ! -x "$helpexe" \) ]
then
    echo "usage: adr help COMMAND [ARG] ..."
    echo "COMMAND is one of: "
    $adr_bin_dir/_adr_commands | sed 's/^/  /'
    echo "Run 'adr help COMMAND' for help on a specific command."
else
	if [ -x "$helpexe" ]
	then
		"$helpexe"
	else
		grep -E '^##' "$cmdexe" | cut -c 4-
	fi
	
	# Assumes only two levels of command / subcommand.
	subcmds=( $(compgen -G "$adr_bin_dir/_adr_$1_"'*') )
	
	if (( ${#subcmds} > 0 ))
	then
		echo
		echo Subcommands:
		for f in "${subcmds[@]}"
		do
			basename $f | cut -c $(( ${#1} + 7 ))-
		done | sed "s/^/  adr $1 /"
	fi
fi
