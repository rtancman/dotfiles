#!/bin/sh

BREW_IS_AVAILABLE="$(sudo -u $DOTFILE_DEFAULT_USER brew --version 2>&1 >/dev/null)"

if [[ ${BREW_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][Brew]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[Brew] Start Install ${txtrst}";
    
    sudo -u $DOTFILE_DEFAULT_USER /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    
    echo -e "${bakgrn}[Brew] Finish Install ${txtrst}";

fi