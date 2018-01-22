# Use Markdown Architectural Decision Records

Should we record the architectural decisions made in this project?
And if we do, how to structure these recordings?

## Considered Alternatives

* [MADR](https://adr.github.io/madr/) - Markdown Architectural Decision Records
* [Michael Nygard's template](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions) - The first incarnation of the term "ADR". Maintainable by [adr-tools](https://github.com/npryce/adr-tools).
* [Sustainable Architectural Decisions](https://www.infoq.com/articles/sustainable-architectural-design-decisions) - The Y-Statements
* [DecisionRecord](https://github.com/schubmat/DecisionCapture) - Agile records by [@schubmat](https://github.com/schubmat/)
* Other templates listed at <https://github.com/joelparkerhenderson/architecture_decision_record>
* No records

## Decision Outcome

* Chosen Alternative: MADR
* Implicit assumptions should be made explicit.
  Design documentation is important to enable people understanding the decisions later on.
  See also [A rational design process: How and why to fake it](https://doi.org/10.1109/TSE.1986.6312940).
* The MADR template is lean and fits our development style.

<!-- Pros and cons of alternatives straight-forward to elicit and therefore not captured. -->
