#!/bin/sh

TEAMVIEWER_IS_AVAILABLE="$(brew list --cask | grep teamviewer)"

if [[ ${TEAMVIEWER_IS_AVAILABLE} == 'teamviewer' ]]; then

    echo -e "${bakgrn}[installed][teamviewer]${txtrst}" ;

else

    echo -e "${bakcyn}[teamviewer] Start Install ${txtrst}";

    brew install teamviewer --cask

    echo -e "${bakgrn}[teamviewer] Finish Install ${txtrst}";

fi
