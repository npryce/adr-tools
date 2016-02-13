adr help
for c in $(_adr_commands)
do
    adr help $c
done

adr help nonexistent-command
echo exit status: $?
