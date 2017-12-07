# 2. Implement as shell scripts

Date: 2016-02-12

## Status

Accepted

## Context

ADRs are plain text files stored in a subdirectory of the project.

The tool needs to create new files and apply small edits to
the Status section of existing files.

## Decision

The tool is implemented as shell scripts that use standard Unix
tools -- grep, sed, awk, etc.

## Consequences

The tool won't support Windows. Being plain text files, ADRs can
be created by hand and edited in any text editor.  This tool just
makes the process more convenient.

Development will have to cope with differences between Unix
variants, particularly Linux and MacOS X.
