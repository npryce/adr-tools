adr new First Decision
adr new Second Decision
adr new Third Decision
cat > intro.md <<EOF
An intro.

Multiple paragraphs.
EOF
cat > outro.md <<EOF
An outro.
EOF
adr generate toc -i intro.md -o outro.md
