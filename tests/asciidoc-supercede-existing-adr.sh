echo "adoc" > .adr-file-type
adr new First Record
adr new -s 1 Second Record
head -10 doc/adr/0001-first-record.adoc
head -12 doc/adr/0002-second-record.adoc

