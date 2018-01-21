#!/bin/sh

GITFLOW_IS_AVAILABLE="$(git-flow version 2>&1 >/dev/null)"

if [[ ${GITFLOW_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][git-flow]${txtrst}" ;

else

    echo -e "${bakcyn}[git-flow] Start Install ${txtrst}";

    brew install git-flow

    echo -e "${bakgrn}[git-flow] Finish Install ${txtrst}";

fi
