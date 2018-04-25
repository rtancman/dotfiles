#!/bin/sh

MERCURIAL_IS_AVAILABLE="$(hg --version 2>&1 >/dev/null)"

if [[ ${MERCURIAL_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][mercurial]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[mercurial] Start Install ${txtrst}";

	dnf install -y mercurial;

	echo -e "${bakgrn}[mercurial] Finish Install ${txtrst}";

fi
