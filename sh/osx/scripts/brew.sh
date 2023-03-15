#!/bin/sh

BREW_IS_AVAILABLE="$(brew --version 2>&1 >/dev/null)"

if [[ ${BREW_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][Brew]${txtrst}" ;

else

    echo -e "${bakcyn}[Brew] Start Install ${txtrst}";

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    echo -e "${bakgrn}[Brew] Finish Install ${txtrst}";

fi
