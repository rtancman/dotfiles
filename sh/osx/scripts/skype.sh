#!/bin/sh

SKYPE_IS_AVAILABLE="$(brew cask list | grep skype)"

if [[ ${SKYPE_IS_AVAILABLE} == 'skype' ]]; then

    echo -e "${bakgrn}[installed][skype]${txtrst}" ;

else

    echo -e "${bakcyn}[skype] Start Install ${txtrst}";

    brew cask install skype

    echo -e "${bakgrn}[skype] Finish Install ${txtrst}";

fi
