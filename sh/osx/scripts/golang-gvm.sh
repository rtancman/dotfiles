#!/bin/sh

GVM_IS_AVAILABLE="$(gvm version 2>&1 >/dev/null)"

if [[ ${GVM_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][golang gvm]${txtrst}" ;

else

    echo -e "${bakcyn}[golang gvm] Start Install ${txtrst}";

    bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

    echo -e "${bakgrn}[golang gvm] Finish Install ${txtrst}";

fi
