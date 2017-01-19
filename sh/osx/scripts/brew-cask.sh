#!/bin/sh

BREWCASKROOM_IS_AVAILABLE="$(sudo -u $DOTFILE_DEFAULT_USER brew cask --version 2>&1 >/dev/null)"

if [[ ${BREWCASKROOM_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][brew-cask]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[brew-cask] Start Install ${txtrst}";
    
    sudo -u $DOTFILE_DEFAULT_USER brew tap caskroom/cask
    
    echo -e "${bakgrn}[brew-cask] Finish Install ${txtrst}";

fi