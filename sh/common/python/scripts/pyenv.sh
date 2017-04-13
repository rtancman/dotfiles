#!/bin/sh

PYENV_IS_AVAILABLE="$(pyenv -v 2>&1 >/dev/null)"

if [[ ${PYENV_IS_AVAILABLE} == '' || -e "/home/$DOTFILE_DEFAULT_USER/.pyenv" ]]; then
    
    echo -e "${bakgrn}[installed][pyenv]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[pyenv] Start Install ${txtrst}";

    curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash ;
    mv ${HOME}/.pyenv /home/$DOTFILE_DEFAULT_USER/.pyenv
    chown -R $DOTFILE_DEFAULT_USER:$DOTFILE_DEFAULT_USER /home/$DOTFILE_DEFAULT_USER/.pyenv
    echo -e '' >> /home/$DOTFILE_DEFAULT_USER/.bashrc;
    echo -e '# pyenv ' >> /home/$DOTFILE_DEFAULT_USER/.bashrc;
    echo -e 'export PATH="$HOME/.pyenv/bin:$PATH"' >> /home/$DOTFILE_DEFAULT_USER/.bashrc ;
    echo -e 'eval "$(pyenv init -)"' >> /home/$DOTFILE_DEFAULT_USER/.bashrc ;
    su - $DOTFILE_DEFAULT_USER eval "$(/home/$DOTFILE_DEFAULT_USER/.pyenv/bin/pyenv init -)" ;
    su - $DOTFILE_DEFAULT_USER /home/$DOTFILE_DEFAULT_USER/.pyenv/bin/pyenv update ;

    echo -e "${bakgrn}[pyenv] Finish Install ${txtrst}";

fi