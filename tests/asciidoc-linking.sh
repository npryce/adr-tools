echo "adoc" > .adr-file-type
adr new First Record
adr new Second Record
adr new Third Record
adr link 3 Amends 1 "Amended by"
adr link 3 Clarifies 2 "Clarified by"
head -12 doc/adr/0001-first-record.adoc
head -12 doc/adr/0002-second-record.adoc
head -14 doc/adr/0003-third-record.adoc
