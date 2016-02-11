ADR Tools
=========

Command-line tools for working with
[Architecture Decision Records][ADRs] (ADRs).

[![Build Status](https://travis-ci.org/npryce/adr-tools.svg?branch=master)](https://travis-ci.org/npryce/adr-tools)

1. Add the `src/` directory to your PATH.
2. Use the `adr` command to manage ADRs in your project.

Quick Start
-----------

1. Create an ADR directory in the root of your project:

        adr init

    This will create the first ADR recording that you are using ADRs
    to record architectural decisions and linking to 
    [Michael Nygard's article on the subject][ADRs].

2. Create a new ADR

        adr new Use Node.JS

    This will create a new, numbered ADR file and open it in your
    editor of choice (as specified by the VISUAL or EDITOR environment
    variable).

3. Create a new ADR that supercedes a previous one (ADR 2, for example)

        adr new Use Rust -s 2

    This will create a new ADR file that is flagged as superceding
    ADR 2, and changes the status of ADR 2 to indicate that it is
    superceded by the new ADR.  It then opens the new ADR in your
    editor of choice.


See the [tests](tests/) for detailed examples.

[ADRs]: http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions
