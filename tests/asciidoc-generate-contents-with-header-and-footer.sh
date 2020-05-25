echo "adoc" > .adr-file-type
adr new First Decision
adr new Second Decision
adr new Third Decision
cat > intro.adoc <<EOF
An intro.

Multiple paragraphs.
EOF
cat > outro.adoc <<EOF
An outro.
EOF
adr generate toc -i intro.adoc -o outro.adoc
