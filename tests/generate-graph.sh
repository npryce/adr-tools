adr init
adr new An idea that seems good at the time
adr new -s 2 A better idea
adr new This will work
adr new -s 3 The end
# with default root and extension in links
adr generate graph
# with specified root and extension in links
adr generate graph -p http://example.com/ -e .xxx
