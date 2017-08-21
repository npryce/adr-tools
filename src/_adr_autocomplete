#!/bin/bash
eval "$($(dirname $0)/adr-config)"

cmds=("$@")
available_commands=$( $adr_bin_dir/_adr_commands | sort )

if (( ${#@} <= 2))
then
  suggestions=($( compgen -W "${available_commands}" -- "$2" ))
  if [ "$suggestions" != "$2" ]
  then
    echo "${suggestions[*]}"
    exit 0
  fi
fi

subcmds_files=( $(compgen -G "$adr_bin_dir/_adr_$2_"'*' | sort ) )
if (( ${#subcmds_files} > 0 ))
then
  subcmds=$( for f in "${subcmds_files[@]}"
  do
    basename $f | cut -c $(( ${#2} + 7 ))-
  done )
  suggestions=($( compgen -W "${subcmds}" -- "$3" ))
  if [ "$suggestions" != "$3" ]
  then
    echo "${suggestions[*]}"
    exit 0
  fi
fi
