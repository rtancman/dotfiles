#!/bin/sh

GO_IS_AVAILABLE="$(sudo -u $DOTFILE_DEFAULT_USER go version 2>&1 >/dev/null)"

if [[ ${GO_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][go]${txtrst} already installed ;)" ;

else

    echo -e "${bakcyn}[go] Start Install ${txtrst}";

    sudo -u $DOTFILE_DEFAULT_USER brew install go goenv

    echo -e "${bakgrn}[go] Finish Install ${txtrst}";

fi
