mkdir templates-dir
echo "Hello template" > templates-dir/template.md

ADR_TEMPLATES_DIR=templates-dir
export ADR_TEMPLATES_DIR

adr new Example

head -1 doc/adr/0001-example.md

