#!/bin/sh

BG='#282a36ee'  # bg 
BGD='#21222cee' # bgdark
FG='#f8f8f2ee'  # fg
OR='#ffb86cbb'  # orange 
GR='#50fa7bbb'  # green
CY='#8be9fdbb'  # cyan
YE='#f1fa8cbb'  # yellow
PI='#ff79c6bb'  # pink
RE='#ff5555bb'  # red 
PU='#bd93f9bb'  # purple
DPU='#6272a4bb' # dark purple

i3lock \
-e                      \
--insidevercolor=$BGD   \
--insidewrongcolor=$BG  \
--insidecolor=$BG       \
--ringvercolor=$DPU     \
--ringwrongcolor=$RE    \
--ringcolor=$PU         \
--linecolor=$CY         \
--keyhlcolor=$CY        \
--bshlcolor=$YE         \
--separatorcolor=$PI    \
--verifcolor=$DPU       \
--wrongcolor=$RE        \
--layoutcolor=$PU       \
--timecolor=$PU         \
--datecolor=$PU         \
--greetercolor=$PU      \
\
--timestr="%H:%M:%S"    \
--datestr="%A, %m, %Y"  \
--wrongtext="Nein!"     \
--veriftext="Warte..."  \
--greetertext="Federal Security Service. Mail to paradox1859@gmail.com" \
--noinputtext="Leeren"  \
\
--wrong-font=hermit     \
--verif-font=hermit     \
--layout-font=hermit    \
--time-font=hermit      \
--greeter-font=hermit   \
--date-font=hermit      \
\
--radius 100            \
--screen 1              \
--blur 5                \
--clock                 \
--indicator             \
--keylayout 2           \
#--keylayout 2         \
#\
# etc
