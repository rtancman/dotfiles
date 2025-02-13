#!/bin/sh

SLACK_IS_AVAILABLE="$(brew list --cask | grep slack)"

if [[ ${SLACK_IS_AVAILABLE} == 'slack' ]]; then

    echo -e "${bakgrn}[installed][slack]${txtrst}" ;

else

    echo -e "${bakcyn}[slack] Start Install ${txtrst}";

    brew install slack --cask

    echo -e "${bakgrn}[slack] Finish Install ${txtrst}";

fi
