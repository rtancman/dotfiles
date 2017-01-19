#!/bin/sh

GIT_IS_AVAILABLE="$(sudo -u $DOTFILE_DEFAULT_USER git --version 2>&1 >/dev/null)"

if [[ ${GIT_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][Git]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[Git] Start Install ${txtrst}";
    
    sudo -u $DOTFILE_DEFAULT_USER brew install git
    
    echo -e "${bakgrn}[Git] Finish Install ${txtrst}";

fi