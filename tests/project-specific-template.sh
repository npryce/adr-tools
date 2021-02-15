adr init adrs
mkdir -p adrs/templates
cat > adrs/templates/template.md <<EOF
---
title: "NUMBER. [short title of solved problem and solution]"
geekdocRepo: https://github.com/owncloud/ocis
geekdocEditPath: edit/master/docs/ocis/adr
geekdocFilePath: 0005-example.md
custom: foo
---

* Status: [proposed | accepted | deprecated | superseded by [ADR-0005](0005-example.md) | …] <!-- optional -->
* Date: [YYYY-MM-DD when the decision was last updated] <!-- optional -->

## Context and Problem Statement

EOF
adr new Aaa Bbb
adr new Ccc Ddd
cat adrs/0002-aaa-bbb.md
cat adrs/0003-ccc-ddd.md
