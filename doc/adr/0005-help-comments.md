# 5. Help comments

Date: 2016-02-13

## Status

Accepted

Amended by [9. Help scripts](0009-help-scripts.md)

## Context

The tool will have a `help` subcommand to provide documentation
for users.

It's nice to have usage documentation in the script files
themselves, in comments.  When reading the code, that's the first
place to look for information about how to run a script.

## Decision

Write usage documentation in comments in the source file.

Distinguish between documentation comments and normal comments.
Documentation comments have two hash characters at the start of
the line.

The `adr help` command can parse comments out from the script
using the standard Unix tools `grep` and `cut`.

## Consequences

No need to maintain help text in a separate file.

Help text can easily be kept up to date as the script is edited.

There's no automated check that the help text is up to date.  The
tests do not work well as documentation for users, and the help
text is not easily cross-checked against the code.

This won't work if any subcommands are not implemented as scripts
that use '#' as a comment character.
