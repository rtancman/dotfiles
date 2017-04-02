#!/bin/sh

mkdir -p ~/.ve
mkdir -p ~/projects/python

export WORKON_HOME=~/.ve
export PROJECT_HOME=~/workspace
eval "$(pyenv init -)"

pyenv install 3.6-dev
pyenv install 2.7.12

pyenv virtualenv 3.6-dev jupyter3
pyenv virtualenv 3.6-dev tools3
pyenv virtualenv 2.7.12 ipython2
pyenv virtualenv 2.7.12 tools2

pyenv activate jupyter3
pip install jupyter
python -m ipykernel install --user
pyenv deactivate

pyenv activate ipython2
pip install ipykernel
python -m ipykernel install --user
pyenv deactivate

pyenv activate tools3
pip install youtube-dl gnucash-to-beancount rows 
pyenv deactivate

pyenv activate tools2
pip install rename s3cmd fabric mercurial
pyenv deactivate

pyenv global 3.6-dev 2.7.12 jupyter3 ipython2 tools3 tools2

# ipython profile create
curl -L http://hbn.link/hb-ipython-startup-script > ~/.ipython/profile_default/startup/00-venv-sitepackages.py


# # bash_profile
echo -e '

# virtualenvwrapper
export WORKON_HOME=~/.ve
PROJECT_HOME=~/projects/python
eval "$(pyenv init -)"
pyenv virtualenvwrapper_lazy

' >> /home/$DOTFILE_DEFAULT_USER/.bashrc