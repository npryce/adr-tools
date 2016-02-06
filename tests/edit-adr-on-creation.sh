export EDITOR
export VISUAL

EDITOR=fake-editor
VISUAL=
adr new created with EDITOR environment variable set

EDITOR=
VISUAL=fake-visual
adr new created with VISUAL environment variable set

EDITOR=fake-editor
VISUAL=fake-visual
adr new uses setting of VISUAL if both VISUAL and EDITOR are set
