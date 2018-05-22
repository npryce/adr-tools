adr init docs madr
adr new First Record
adr new Second Record
adr new -l "2:Amends:Amended by" -l "3:Clarifies:Clarified by" Third Record
tail -5 docs/0002-first-record.md
tail -5 docs/0003-second-record.md
tail -6 docs/0004-third-record.md
