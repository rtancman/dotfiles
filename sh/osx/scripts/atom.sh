#!/bin/sh

ATOM_IS_AVAILABLE="$(atom --version 2>&1 >/dev/null)"

if [[ ${ATOM_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][atom]${txtrst}" ;

else

    echo -e "${bakcyn}[atom] Start Install ${txtrst}";

    brew cask install atom

    echo -e "${bakgrn}[atom] Finish Install ${txtrst}";

fi
