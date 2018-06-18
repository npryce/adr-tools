adr init docs madr
adr new First Record
adr new Second Record
adr new -l "1:Amends:Amended by" -l "2:Clarifies:Clarified by" Third Record
tail -5 docs/0001-first-record.md
tail -5 docs/0002-second-record.md
tail -6 docs/0003-third-record.md
