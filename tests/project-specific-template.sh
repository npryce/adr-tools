adr init adrs
mkdir -p adrs/templates
cat > adrs/templates/template.md <<EOF
# TITLE

Project specific template!

# Status

STATUS

# Info

ADR Number: NUMBER

Date: DATE

EOF
adr new Aaa Bbb
adr new Ccc Ddd
cat adrs/0002-aaa-bbb.md
cat adrs/0003-ccc-ddd.md
