#!/bin/sh

# https://medium.com/@henriquebastos/guia-definitivo-para-organizar-meu-ambiente-python-a16e2479b753#.dh6x4hprj
PYENV_IS_AVAILABLE="$(pyenv --version 2>&1 >/dev/null)"
PYENVVIRTUALENV_IS_AVAILABLE="$(svn --version 2>&1 >/dev/null)"
PYENVVIRTUALENVWRAPPER_IS_AVAILABLE="$(svn --version 2>&1 >/dev/null)"
PYENV_DIR_IS_AVAILABLE="$(ls -la ~/.ve 2>&1 >/dev/null)"
PYENV_PROJECT_DIR_IS_AVAILABLE="$(ls -la ~/projects/python 2>&1 >/dev/null)"
PYENV_PYTHON_2_7_IS_AVAILABLE="$(pyenv versions | grep 2.7.14 2>&1 >/dev/null)"
PYENV_PYTHON_3_6_IS_AVAILABLE="$(pyenv versions | grep 3.6.2 2>&1 >/dev/null)"
PYENV_PYTHON_2_7_ENV_IPYTHON_IS_AVAILABLE="$(pyenv versions | grep 2.7.14/envs/ipython2 2>&1 >/dev/null)"
PYENV_PYTHON_3_6_ENV_JUPYTER_IS_AVAILABLE="$(pyenv versions | grep 3.6.2/envs/jupyter3 2>&1 >/dev/null)"
PYENV_PYTHON_2_7_ENV_TOOLS_IS_AVAILABLE="$(pyenv versions | grep 2.7.14/envs/tools2 2>&1 >/dev/null)"
PYENV_PYTHON_3_6_ENV_TOOLS_IS_AVAILABLE="$(pyenv versions | grep 3.6.2/envs/tools3 2>&1 >/dev/null)"

echo -e "${bakcyn}[python workspace] Start Install ${txtrst}";

if [[ ${PYENV_IS_AVAILABLE} == '' ]]; then
    echo -e "${bakgrn}[installed][python workspace][pyenv]${txtrst}" ;
else
    echo -e "${bakcyn}[python workspace][pyenv] Start Install ${txtrst}";
    brew install pyenv
    brew install pyenv-virtualenv
    brew install pyenv-virtualenvwrapper
    echo -e "${bakgrn}[python workspace][pyenv] Finish Install ${txtrst}";
fi

# if [[ ${PYENV_IS_AVAILABLE} != '' ]]; then
if [[ ${PYENV_IS_AVAILABLE} == '' ]]; then

      if [[ ${PYENV_DIR_IS_AVAILABLE} == '' ]]; then
          echo -e "${bakgrn}[installed][python workspace][mkdir ~/.ve]${txtrst}" ;
      else
          echo -e "${bakcyn}[python workspace][mkdir ~/.ve ] Start Install ${txtrst}";
          mkdir ~/.ve
          echo -e "${bakgrn}[python workspace][mkdir ~/.ve ] Finish Install ${txtrst}";
      fi

      if [[ ${PYENV_PROJECT_DIR_IS_AVAILABLE} == '' ]]; then
          echo -e "${bakgrn}[installed][python workspace][mkdir -p ~/projects/python]${txtrst}" ;
      else
          echo -e "${bakcyn}[python workspace][mkdir -p ~/projects/python] Start Install ${txtrst}";
          mkdir -p ~/projects/python
          echo -e "${bakgrn}[python workspace][mkdir -p ~/projects/python] Finish Install ${txtrst}";
      fi

      echo -e "${bakcyn}[python workspace][python versions] Start Install ${txtrst}";
      export WORKON_HOME=~/.ve
      export PROJECT_HOME=~/projects/python
      eval "$(pyenv init -)"

      if [[ ${PYENV_PYTHON_3_6_IS_AVAILABLE} == '' ]]; then
          echo -e "${bakgrn}[installed][python workspace][python versions 3.6.2]${txtrst}" ;
      else
          echo -e "${bakcyn}[python workspace][python versions 3.6.2] Start Install ${txtrst}";
          pyenv install 3.6.2
          echo -e "${bakgrn}[python workspace][python versions 3.6.2] Finish Install ${txtrst}";
      fi

      if [[ ${PYENV_PYTHON_2_7_IS_AVAILABLE} == '' ]]; then
          echo -e "${bakgrn}[installed][python workspace][python versions 2.7.14]${txtrst}" ;
      else
          echo -e "${bakcyn}[python workspace][python versions 2.7.14] Start Install ${txtrst}";
          pyenv install 2.7.14
          echo -e "${bakgrn}[python workspace][python versions 2.7.14] Finish Install ${txtrst}";
      fi

      echo -e "${bakcyn}[python workspace][python virtualenv versions] Start Install ${txtrst}";

      if [[ ${PYENV_PYTHON_3_6_ENV_JUPYTER_IS_AVAILABLE} == '' ]]; then
          echo -e "${bakgrn}[installed][python workspace][virtualenv 3.6.2 jupyter3]${txtrst}" ;
      else
          echo -e "${bakcyn}[python workspace][virtualenv 3.6.2 jupyter3] Start Install ${txtrst}";
          pyenv virtualenv 3.6.2 jupyter3
          echo -e "${bakgrn}[python workspace][virtualenv 3.6.2 jupyter3] Finish Install ${txtrst}";
      fi

      if [[ ${PYENV_PYTHON_3_6_ENV_TOOLS_IS_AVAILABLE} == '' ]]; then
          echo -e "${bakgrn}[installed][python workspace][virtualenv 3.6.2 tools3]${txtrst}" ;
      else
          echo -e "${bakcyn}[python workspace][virtualenv 3.6.2 tools3] Start Install ${txtrst}";
          pyenv virtualenv 3.6.2 tools3
          echo -e "${bakgrn}[python workspace][virtualenv 3.6.2 tools3] Finish Install ${txtrst}";
      fi

      if [[ ${PYENV_PYTHON_2_7_ENV_IPYTHON_IS_AVAILABLE} == '' ]]; then
          echo -e "${bakgrn}[installed][python workspace][virtualenv 2.7.14 ipython2]${txtrst}" ;
      else
          echo -e "${bakcyn}[python workspace][virtualenv 2.7.14 ipython2] Start Install ${txtrst}";
          pyenv virtualenv 2.7.14 ipython2
          echo -e "${bakgrn}[python workspace][virtualenv 2.7.14 ipython2] Finish Install ${txtrst}";
      fi

      if [[ ${PYENV_PYTHON_2_7_ENV_TOOLS_IS_AVAILABLE} == '' ]]; then
          echo -e "${bakgrn}[installed][python workspace][virtualenv 2.7.14 tools2]${txtrst}" ;
      else
          echo -e "${bakcyn}[python workspace][virtualenv 2.7.14 tools2] Start Install ${txtrst}";
          pyenv virtualenv 2.7.14 tools2
          echo -e "${bakgrn}[python workspace][virtualenv 2.7.14 tools2] Finish Install ${txtrst}";
      fi

      echo -e "${bakcyn}[python workspace][python virtualenv versions] Finish Install ${txtrst}";

      if [[ ${PYENV_PYTHON_3_6_ENV_JUPYTER_IS_AVAILABLE} == '' ]]; then
        pyenv activate jupyter3
        pip install jupyter
        python -m ipykernel install --user
        pyenv deactivate
      fi

      if [[ ${PYENV_PYTHON_3_6_ENV_TOOLS_IS_AVAILABLE} == '' ]]; then
        pyenv activate tools3
        pip install youtube-dl gnucash-to-beancount rows
        pyenv deactivate
      fi

      if [[ ${PYENV_PYTHON_2_7_ENV_IPYTHON_IS_AVAILABLE} == '' ]]; then
        pyenv activate ipython2
        pip install ipykernel
        python -m ipykernel install --user
        pyenv deactivate
      fi

      if [[ ${PYENV_PYTHON_2_7_ENV_TOOLS_IS_AVAILABLE} == '' ]]; then
        pyenv activate tools2
        pip install rename s3cmd fabric mercurial
        pyenv deactivate
      fi

      pyenv global 3.6.2 2.7.14 jupyter3 ipython2 tools3 tools2

      if [ ! -f ~/.ipython/profile_default/startup/00-venv-sitepackages.py ]; then
        ipython profile create
        curl -L http://hbn.link/hb-ipython-startup-script > ~/.ipython/profile_default/startup/00-venv-sitepackages.py
      fi

      pyenv virtualenvwrapper_lazy

      if grep -r virtualenvwrapper ~/.bash_profile; then
        echo -e "${bakgrn}[installed][python workspace][~/.bash_profile]${txtrst}";
      else
        echo -e "${bakcyn}[python workspace][~/.bash_profile] Start Install ${txtrst}";
        echo -e '

        # virtualenvwrapper
        export WORKON_HOME=~/.ve
        export PROJECT_HOME=~/projects/python
        eval "$(pyenv init -)"
        pyenv virtualenvwrapper_lazy

        ' >> ~/.bash_profile
        echo -e "${bakcyn}[python workspace][~/.bash_profile] Finish Install ${txtrst}";
      fi

      echo -e "${bakcyn}[python workspace][python versions] Finish Install ${txtrst}";
fi

echo -e "${bakgrn}[python workspace] Finish Install ${txtrst}";
