#!/bin/sh

RANCHER_DESKTOP_IS_AVAILABLE="$(brew list --cask | grep rancher)"

if [[ ${RANCHER_DESKTOP_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][rancher_desktop]${txtrst}" ;

else

    echo -e "${bakcyn}[rancher_desktop] Start Install ${txtrst}";

    brew install --cask rancher

    echo -e "${bakgrn}[rancher_desktop] Finish Install ${txtrst}";

fi

brew install colima
