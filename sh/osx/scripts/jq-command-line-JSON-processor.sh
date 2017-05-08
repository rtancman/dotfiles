#!/bin/sh

JQ_IS_AVAILABLE="$(sudo -u $DOTFILE_DEFAULT_USER jq --version 2>&1 >/dev/null)"

if [[ ${JQ_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][jq command-line JSON processor]${txtrst} already installed ;)" ;

else

    echo -e "${bakcyn}[jq command-line JSON processor] Start Install ${txtrst}";

    sudo -u $DOTFILE_DEFAULT_USER brew install jq

    echo -e "${bakgrn}[jq command-line JSON processor] Finish Install ${txtrst}";

fi
