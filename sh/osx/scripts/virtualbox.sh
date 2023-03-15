#!/bin/sh

VIRTUALBOX_IS_AVAILABLE="$(vbox-img --version 2>&1 >/dev/null)"

if [[ ${VIRTUALBOX_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][virtualbox]${txtrst}" ;

else

    echo -e "${bakcyn}[virtualbox] Start Install ${txtrst}";

    brew install virtualbox virtualbox-extension-pack --cask

    echo -e "${bakgrn}[virtualbox] Finish Install ${txtrst}";

fi
