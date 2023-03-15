#!/bin/sh

INTELLIJ_IDEA_CE_IS_AVAILABLE="$(brew list --cask | grep intellij-idea-ce)"

if [[ ${INTELLIJ_IDEA_CE_IS_AVAILABLE} == 'intellij idea ce' ]]; then

    echo -e "${bakgrn}[installed][intellij idea ce]${txtrst}" ;

else

    echo -e "${bakcyn}[intellij idea ce] Start Install ${txtrst}";

    brew install intellij-idea-ce --cask

    echo -e "${bakgrn}[intellij idea ce] Finish Install ${txtrst}";

fi
