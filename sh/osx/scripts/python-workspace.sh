#!/bin/sh

# https://medium.com/@henriquebastos/guia-definitivo-para-organizar-meu-ambiente-python-a16e2479b753#.dh6x4hprj
SVN_IS_AVAILABLE="$(sudo -u $DOTFILE_DEFAULT_USER svn --version 2>&1 >/dev/null)"

if [[ ${SVN_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][svn]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[svn] Start Install ${txtrst}";
    
    sudo -u $DOTFILE_DEFAULT_USER brew install pyenv pyenv-virtualenv pyenv-virtualenvwrapper
    sudo -u $DOTFILE_DEFAULT_USER mkdir ~/.ve 
    sudo -u $DOTFILE_DEFAULT_USER mkdir -p ~/projects/python

    # bash_profile
    # export WORKON_HOME=~/.ve
    # export PROJECT_HOME=~/workspace
    # eval "$(pyenv init -)"
    # #pyenv virtualenvwrapper_lazy

    # pyenv install 3.6.0
    # pyenv install 2.7.13

    # pyenv virtualenv 3.6.0 jupyter3
    # pyenv virtualenv 3.6.0 tools3
    # pyenv virtualenv 2.7.13 ipython2
    # pyenv virtualenv 2.7.13 tools2

    # pyenv activate jupyter3
    # pip install jupyter
    # python -m ipykernel install --user
    # pyenv deactivate

    # pyenv activate ipython2
    # pip install ipykernel
    # python -m ipykernel install --user
    # pyenv deactivate

    # pyenv activate tools3
    # pip install youtube-dl gnucash-to-beancount rows 
    # pyenv deactivate

    # pyenv activate tools2
    # pip install rename s3cmd fabric mercurial
    # pyenv deactivate
    # 
    # pyenv global 3.6.0 2.7.13 jupyter3 ipython2 tools3 tools2

    # ipython profile create
    # curl -L http://hbn.link/hb-ipython-startup-script > ~/.ipython/profile_default/startup/00-venv-sitepackages.py

    echo -e "${bakgrn}[svn] Finish Install ${txtrst}";

fi


pyenv install 2.7.13
