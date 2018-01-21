#!/bin/sh

SVN_IS_AVAILABLE="$(svn --version 2>&1 >/dev/null)"

if [[ ${SVN_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][svn]${txtrst}" ;

else

    echo -e "${bakcyn}[svn] Start Install ${txtrst}";

    brew install svn

    echo -e "${bakgrn}[svn] Finish Install ${txtrst}";

fi
