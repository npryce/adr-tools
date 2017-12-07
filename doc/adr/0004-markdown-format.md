# 4. Markdown format

Date: 2016-02-12

## Status

Accepted

## Context

The decision records must be stored in a plain text format:

* This works well with version control systems.

* It allows the tool to modify the status of records and insert
  hyperlinks when one decision supercedes another.

* Decisions can be read in the terminal, IDE, version control
  browser, etc.

People will want to use some formatting: lists, code examples,
and so on.

People will want to view the decision records in a more readable
format than plain text, and maybe print them out.


## Decision

Record architecture decisions in [Markdown format](https://daringfireball.net/projects/markdown/).

## Consequences

Decisions can be read in the terminal.

Decisions will be formatted nicely and hyperlinked by the
browsers of project hosting sites like GitHub and Bitbucket.

Tools like [Pandoc](http://pandoc.org/) can be used to convert
the decision records into HTML or PDF.
