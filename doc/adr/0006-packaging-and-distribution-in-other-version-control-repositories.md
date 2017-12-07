# 6. Packaging and distribution in other version control repositories

Date: 2016-02-16

## Status

Accepted

## Context

Users want to install adr-tools with their preferred package
manager.  For example, Ubuntu users use `apt`, RedHat users use
`yum` and Mac OS X users use [Homebrew](http://brew.sh).

The developers of `adr-tools` don't know how, nor have permissions,
to use all these packaging and distribution systems. Therefore packaging
and distribution must be done by "downstream" parties.

The developers of the tool should not favour any one particular
packaging and distribution solution.

## Decision

The `adr-tools` project will not contain any packaging or
distribution scripts and config.

Packaging and distribution will be managed by other projects in
separate version control repositories.

## Consequences

The git repo of this project will be simpler.

Eventually, users will not have to use Git to get the software.

We will have to tag releases in the `adr-tools` repository so that
packaging projects know what can be published and how it should be
identified.

We will document how users can install the software in this
project's README file.
