#!/bin/sh

APEX_IS_AVAILABLE="$(/usr/local/bin/apex version 2>&1 >/dev/null)"

if [[ ${APEX_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][apex]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[apex] Start Install ${txtrst}";

    curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sudo sh

	echo -e "${bakgrn}[apex] Finish Install ${txtrst}";

fi
