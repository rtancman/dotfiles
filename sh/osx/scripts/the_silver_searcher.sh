#!/bin/sh

SILVERSEARCHAG_IS_AVAILABLE="$(ag --version 2>&1 >/dev/null)"

if [[ ${SILVERSEARCHAG_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][the_silver_searcher (ag)]${txtrst}" ;

else

    echo -e "${bakcyn}[the_silver_searcher (ag)] Start Install ${txtrst}";

    brew install the_silver_searcher

    echo -e "${bakgrn}[the_silver_searcher (ag)] Finish Install ${txtrst}";

fi
