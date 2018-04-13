#!/bin/sh

mkdir -p ~/.ve
mkdir -p ~/projects/python

export WORKON_HOME=~/.ve
export PROJECT_HOME=~/projects/python
eval "$(pyenv init -)"

pyenv update
env PYTHON_CONFIGURE_OPTS="--enable-shared" pyenv install 3.6.5
env PYTHON_CONFIGURE_OPTS="--enable-shared" pyenv install 2.7.14

echo -e "CREATE VENVS ---------------------------------------------------------------"
pyenv virtualenv 3.6.5 jupyter3
pyenv virtualenv 3.6.5 tools3
pyenv virtualenv 2.7.14 ipython2
pyenv virtualenv 2.7.14 tools2

echo -e "jupyter3 venv ---------------------------------------------------------------"
pyenv activate jupyter3
pip install jupyter
python -m ipykernel install --user
pyenv deactivate

echo -e "ipython2 venv ---------------------------------------------------------------"
pyenv activate ipython2
pip install ipykernel
python -m ipykernel install --user
pyenv deactivate

echo -e "tools3 venv ---------------------------------------------------------------"
pyenv activate tools3
pip install youtube-dl gnucash-to-beancount rows
pyenv deactivate

echo -e "tools2 venv ---------------------------------------------------------------"
pyenv activate tools2
pip install --upgrade pip
pip install rename s3cmd fabric mercurial
pyenv deactivate

echo -e "---------------------------------------------------------------"
echo -e "---------------------------------------------------------------"
echo -e "setup ---------------------------------------------------------------"

pyenv global 3.6.5 2.7.14 jupyter3 ipython2 tools3 tools2

ipython profile create
curl -L http://hbn.link/hb-ipython-startup-script > ~/.ipython/profile_default/startup/00-venv-sitepackages.py

# bash_profile
echo -e '

# virtualenvwrapper
export WORKON_HOME=~/.ve
export PROJECT_HOME=~/projects/python
eval "$(pyenv init -)"
pyenv virtualenvwrapper_lazy

' >> ~/.bashrc
