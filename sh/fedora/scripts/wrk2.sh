#!/bin/sh

WRK2_IS_AVAILABLE="$(wrk2 -v 2>&1 >/dev/null)"

if [[ ${WRK2_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][wrk2]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[wrk2] Start Install ${txtrst}";

    git clone https://github.com/giltene/wrk2.git
    cd wrk2
    make
    sudo cp wrk /usr/local/bin/wrk2
    cd ..

	echo -e "${bakgrn}[wrk2] Finish Install ${txtrst}";

fi
