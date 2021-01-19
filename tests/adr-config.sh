adr config

adr config -q

echo "adr_template_dir='/usr/local/share/adr-tools'" | sudo tee /etc/adr-config >/dev/null
adr config

adr config -q

echo "adr_template_dir='/usr/local/share/adr-tools'" > ~/.adr-config
adr config

adr config -q

mkdir -p doc/adr
echo "adr_template_dir='/usr/local/share/adr-tools'" > doc/adr/.adr-config
adr config

adr config -q

sudo rm /etc/adr-config
adr config

adr config -q

rm ~/.adr-config
adr config

adr config -q
