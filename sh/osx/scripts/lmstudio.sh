#!/bin/sh

LMSTUDIO_IS_AVAILABLE="$(brew list --cask | grep lm-studio)"

if [[ ${LMSTUDIO_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][lm-studio]${txtrst}" ;

else

    echo -e "${bakcyn}[lm-studio] Start Install ${txtrst}";

    brew install --cask lm-studio

    echo -e "${bakgrn}[lm-studio] Finish Install ${txtrst}";

fi
