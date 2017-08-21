ADR Tools
=========

A command-line tool for working with [Architecture Decision Records][ADRs] (ADRs).

[![Build Status](https://travis-ci.org/npryce/adr-tools.svg?branch=master)](https://travis-ci.org/npryce/adr-tools)

Quick Start
-----------

[Install ADR Tools](INSTALL.md).

Use the `adr` command to manage ADRs.  Try running `adr help`.

ADRs are stored in your project as Markdown files in the `doc/adr` directory.


1. Create an ADR directory in the root of your project:

        adr init doc/architecture/decisions

    This will create the first ADR recording that you are using ADRs
    to record architectural decisions and linking to 
    [Michael Nygard's article on the subject][ADRs].

2. Create Architecture Decision Records

        adr new Implement as Unix shell scripts

    This will create a new, numbered ADR file and open it in your
    editor of choice (as specified by the VISUAL or EDITOR environment
    variable).

    To create a new ADR that supersedes a previous one (ADR 9, for example),
    use the -s option.

        adr new -s 9 Use Rust for performance-critical functionality

    This will create a new ADR file that is flagged as superseding
    ADR 9, and changes the status of ADR 9 to indicate that it is
    superseded by the new ADR.  It then opens the new ADR in your
    editor of choice.
    
3. For further information, use the built in help:

        adr help


See the [tests](tests/) for detailed examples.

The decisions for this tool are recorded as [architecture decision records in the project repository](doc/adr/). 

[ADRs]: http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions
