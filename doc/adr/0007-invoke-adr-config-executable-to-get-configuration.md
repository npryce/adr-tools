# 7. Invoke adr-config executable to get configuration

Date: 2016-12-17

## Status

Accepted

## Context

Packagers (e.g. Homebrew developers) want to configure adr-tools to match the conventions of their installation. 

Currently, this is done by sourcing a file `config.sh`, which should sit beside the `adr` executable.

This name is too common.

The `config.sh` file is not executable, and so doesn't belong in a bin directory.

## Decision

Replace `config.sh` with an executable, named `adr-config` that outputs configuration.

Each script in ADR Tools will eval the output of `adr-config` to configure itself.

## Consequences

Configuration within ADR Tools is a little more complicated.

Packagers can write their own implementation of `adr-config` that outputs configuration that matches the platform's installation conventions, and deploy it next to the `adr` script.

To make development easier, the implementation of `adr-config` in the project's src/ directory will output configuration that lets the tool to run from the src/ directory without any installation step. (Packagers should not include this script in a deployable package.)
