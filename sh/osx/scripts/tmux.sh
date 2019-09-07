#!/bin/sh

TMUX_IS_AVAILABLE="$(tmux -V 2>&1 >/dev/null)"

if [[ ${TMUX_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][tmux]${txtrst}" ;

else

    echo -e "${bakcyn}[tmux] Start Install ${txtrst}";

    brew install tmux

    echo -e "${bakgrn}[tmux] Finish Install ${txtrst}";

fi
