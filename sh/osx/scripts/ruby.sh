#!/bin/sh

RUBY_IS_AVAILABLE="$(ruby --version 2>&1 >/dev/null)"

if [[ ${RUBY_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][ruby]${txtrst}" ;

else

    echo -e "${bakcyn}[ruby] Start Install ${txtrst}";

    brew install ruby

    echo -e "${bakgrn}[ruby] Finish Install ${txtrst}";

fi
