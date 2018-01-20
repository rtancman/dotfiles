#!/bin/sh

SUBLIME_TEXT_IS_AVAILABLE="$(subl --version 2>&1 >/dev/null)"

if [[ ${SUBLIME_TEXT_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][sublime-text]${txtrst}" ;

else

    echo -e "${bakcyn}[sublime-text] Start Install ${txtrst}";

    brew cask install sublime-text

    echo -e "${bakgrn}[sublime-text] Finish Install ${txtrst}";

fi
