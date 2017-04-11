#!/bin/sh

PYENV_IS_AVAILABLE="$(pyenv -v 2>&1 >/dev/null)"

if [[ ${PYENV_IS_AVAILABLE} == '' || -e "/home/$DOTFILE_DEFAULT_USER/.pyenv" ]]; then
    
    DOTFILE_PYENV_PATH="$(sudo -iu rtancman pyenv root)"

    if [[ -e "$DOTFILE_PYENV_PATH/plugins/pyenv-virtualenv" ]]; then
    
         echo -e "${bakgrn}[installed][pyenv-virtualenv]${txtrst} already installed ;)" ;

    else

        echo -e "${bakcyn}[pyenv-virtualenv] Start Install ${txtrst}";
        sudo -iu $DOTFILE_DEFAULT_USER git clone https://github.com/pyenv/pyenv-virtualenv.git $DOTFILE_PYENV_PATH/plugins/pyenv-virtualenv
        echo 'eval "$(pyenv virtualenv-init -)"' >> /home/$DOTFILE_DEFAULT_USER/.bashrc
        su - $DOTFILE_DEFAULT_USER /home/$DOTFILE_DEFAULT_USER/.pyenv/bin/pyenv init - ;
        echo -e "${bakcyn}[pyenv-virtualenv] Finish Install ${txtrst}";
        
    fi   

else

    echo -e "${bakgrn}[installed][python-workspace]${txtrst} need install pyenv" ;

fi