#!/bin/sh

GCPSDK_IS_AVAILABLE="$(gcloud --version 2>&1 >/dev/null)"

if [[ ${GCPSDK_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][google cloud sdk]${txtrst}" ;

else

    echo -e "${bakcyn}[google cloud sdk] Start Install ${txtrst}";

    curl https://sdk.cloud.google.com | bash

    echo -e "${bakgrn}[google cloud sdk] Finish Install ${txtrst}";

fi
