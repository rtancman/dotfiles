#!/bin/sh

RUBY_IS_AVAILABLE="$(sudo -u $DOTFILE_DEFAULT_USER ruby --version 2>&1 >/dev/null)"

if [[ ${RUBY_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][ruby]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[ruby] Start Install ${txtrst}";
    
    sudo -u $DOTFILE_DEFAULT_USER brew install ruby
    
    echo -e "${bakgrn}[ruby] Finish Install ${txtrst}";

fi