#!/bin/sh

PYENV_IS_AVAILABLE="$(pyenv -v 2>&1 >/dev/null)"

if [[ ${PYENV_IS_AVAILABLE} == '' || -e "/home/$DOTFILE_DEFAULT_USER/.pyenv" ]]; then
    
    DOTFILE_PYENV_PATH="$(sudo -iu rtancman pyenv root)"

    if [[ -e "$DOTFILE_PYENV_PATH/plugins/pyenv-virtualenvwrapper" ]]; then
    
         echo -e "${bakgrn}[installed][pyenv-virtualenvwrapper]${txtrst} already installed ;)" ;

    else

        echo -e "${bakcyn}[pyenv-virtualenvwrapper] Start Install ${txtrst}";
        sudo -iu $DOTFILE_DEFAULT_USER git clone https://github.com/pyenv/pyenv-virtualenvwrapper.git $DOTFILE_PYENV_PATH/plugins/pyenv-virtualenvwrapper
        echo -e "${bakcyn}[pyenv-virtualenvwrapper] Finish Install ${txtrst}";

    fi   

else

    echo -e "${bakgrn}[installed][python-workspace]${txtrst} need install pyenv" ;

fi