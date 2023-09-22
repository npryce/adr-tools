adr init architecture-log
adr new First Record

export VISUAL
export EDITOR

if adr edit
then
  echo ERROR: should have failed
fi

VISUAL=
EDITOR=fake-editor
adr edit

VISUAL=fake-visual
EDITOR=
adr edit

VISUAL=fake-visual
EDITOR=fake-editor
adr edit

adr edit 1
