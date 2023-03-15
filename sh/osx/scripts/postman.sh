#!/bin/sh

POSTMAN_IS_AVAILABLE="$(brew list --cask | grep postman)"

if [[ ${POSTMAN_IS_AVAILABLE} == 'postman' ]]; then

    echo -e "${bakgrn}[installed][postman]${txtrst}" ;

else

    echo -e "${bakcyn}[postman] Start Install ${txtrst}";

    brew install postman --cask

    echo -e "${bakgrn}[postman] Finish Install ${txtrst}";

fi
