#!/bin/sh

TEAMVIEWER_IS_AVAILABLE="$(brew cask list | grep teamviewer)"

if [[ ${TEAMVIEWER_IS_AVAILABLE} == 'teamviewer' ]]; then

    echo -e "${bakgrn}[installed][teamviewer]${txtrst}" ;

else

    echo -e "${bakcyn}[teamviewer] Start Install ${txtrst}";

    brew cask install teamviewer

    echo -e "${bakgrn}[teamviewer] Finish Install ${txtrst}";

fi
