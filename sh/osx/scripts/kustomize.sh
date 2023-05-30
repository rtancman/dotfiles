#!/bin/sh

KUSTOMIZE_IS_AVAILABLE="$(kustomize version 2>&1 >/dev/null)"

if [[ ${KUSTOMIZE_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][kustomize]${txtrst}" ;

else

    echo -e "${bakcyn}[kustomize] Start Install ${txtrst}";

    brew install kustomize

    echo -e "${bakgrn}[kustomize] Finish Install ${txtrst}";

fi
