echo "adoc" > .adr-file-type
adr new First Record
adr new Second Record
adr new -l "1:Amends:Amended by" -l "2:Clarifies:Clarified by" Third Record
head -12 doc/adr/0001-first-record.adoc
head -12 doc/adr/0002-second-record.adoc
head -14 doc/adr/0003-third-record.adoc
