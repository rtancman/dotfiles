#!/bin/sh

JQ_IS_AVAILABLE="$(jq --version 2>&1 >/dev/null)"

if [[ ${JQ_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][jq command-line JSON processor]${txtrst}" ;

else

    echo -e "${bakcyn}[jq command-line JSON processor] Start Install ${txtrst}";

    brew install jq

    echo -e "${bakgrn}[jq command-line JSON processor] Finish Install ${txtrst}";

fi
