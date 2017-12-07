# 3. Single command with subcommands

Date: 2016-02-12

## Status

Accepted

## Context

The tool provides a number of related commands to create
and manipulate architecture decision records.

How can the user find out about the commands that are available?

## Decision

The tool defines a single command, called `adr`.

The first argument to `adr` (the subcommand) specifies the
action to perform.  Further arguments are interpreted by the
subcommand.

Running `adr` without any arguments lists the available
subcommands.

Subcommands are implemented as scripts in the same
directory as the `adr` script.  E.g. the subcommand `new` is
implemented as the script `adr-new`, the subcommand `help`
as the script `adr-help` and so on.

Helper scripts that are part of the implementation but not
subcommands follow a different naming convention, so that
subcommands can be listed by filtering and transforming script
file names.

## Consequences

Users can more easily explore the capabilities of the tool.

Users are already used to this style of command-line tool.  For
example, Git works this way.

Each subcommand can be implemented in the most appropriate
language.
