#!/bin/sh

SILVERSEARCHAG_IS_AVAILABLE="$(sudo -u $DOTFILE_DEFAULT_USER ag --version 2>&1 >/dev/null)"

if [[ ${SILVERSEARCHAG_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][Git]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[the_silver_searcher (ag)] Start Install ${txtrst}";
    
    sudo -u $DOTFILE_DEFAULT_USER brew install the_silver_searcher
    
    echo -e "${bakgrn}[the_silver_searcher (ag)] Finish Install ${txtrst}";

fi