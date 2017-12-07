# 8. Use ISO 8601 Format for Dates

Date: 2017-02-21

## Status

Accepted

## Context

`adr-tools` seeks to communicate the history of architectural decisions of a
project.  An important component of the history is the time at which a decision
was made.

To communicate effectively, `adr-tools` should present information as
unambiguously as possible.  That means that culture-neutral data formats should
be preferred over culture-specific formats.

Existing `adr-tools` deployments format  dates as `dd/mm/yyyy` by default.  That
formatting is common formatting in the United Kingdom (where the `adr-tools`
project was originally written), but is easily confused with the `mm/dd/yyyy`
format preferred in the United States.

The default date format may be overridden by setting `ADR_DATE` in `config.sh`.

## Decision

`adr-tools` will use the ISO 8601 format for dates:  `yyyy-mm-dd`

## Consequences

Dates are displayed in a standard, culture-neutral format.

The UK-style and ISO 8601 formats can be distinguished by their separator
character.  The UK-style dates used a slash (`/`), while the ISO dates use a
hyphen (`-`).

Prior to this decision, `adr-tools` was deployed using the UK format for dates.
After adopting the ISO 8601 format, existing deployments of `adr-tools` must do
one of the following:

 * Accept mixed formatting of dates within their documentation library.
 * Update existing documents to use ISO 8601 dates by running `adr upgrade-repository`
