echo "adoc" > .adr-file-type
adr new First Record
adr new Second Record
adr new -s 1 -s 2 Third Record
head -8 doc/adr/0001-first-record.adoc
head -8 doc/adr/0002-second-record.adoc
head -12 doc/adr/0003-third-record.adoc
