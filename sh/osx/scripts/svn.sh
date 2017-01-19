#!/bin/sh

SVN_IS_AVAILABLE="$(sudo -u $DOTFILE_DEFAULT_USER svn --version 2>&1 >/dev/null)"

if [[ ${SVN_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][svn]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[svn] Start Install ${txtrst}";
    
    sudo -u $DOTFILE_DEFAULT_USER brew install svn
    
    echo -e "${bakgrn}[svn] Finish Install ${txtrst}";

fi