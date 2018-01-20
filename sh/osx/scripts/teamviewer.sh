#!/bin/sh

TEAMVIEWER_IS_AVAILABLE="$(brew cask list | grep teamviewer 2>&1 >/dev/null)"

if [[ ${TEAMVIEWER_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][teamviewer]${txtrst}" ;

else

    echo -e "${bakcyn}[teamviewer] Start Install ${txtrst}";

    brew cask install teamviewer

    echo -e "${bakgrn}[teamviewer] Finish Install ${txtrst}";

fi
