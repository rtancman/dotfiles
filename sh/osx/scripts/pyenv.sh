#!/bin/sh

PYENV_IS_AVAILABLE="$(pyenv --version 2>&1 >/dev/null)"

if [[ ${PYENV_IS_AVAILABLE} == '' ]]; then
    echo -e "${bakgrn}[installed][pyenv]${txtrst}" ;
else
    echo -e "${bakcyn}[pyenv] Start Install ${txtrst}";
    brew install pyenv
    echo -e "${bakgrn}[pyenv] Finish Install ${txtrst}";
fi

PYENV_VIRTUALENV_IS_AVAILABLE="$(pyenv virtualenv --version 2>&1 >/dev/null)"

if [[ ${PYENV_VIRTUALENV_IS_AVAILABLE} == '' ]]; then
    echo -e "${bakgrn}[installed][pyenv virtualenv]${txtrst}" ;
else
    echo -e "${bakcyn}[pyenv virtualenv] Start Install ${txtrst}";
    brew install pyenv-virtualenv
    echo -e "${bakgrn}[pyenv virtualenv] Finish Install ${txtrst}";
fi

PYENV_VIRTUALENVWRAPPER_IS_AVAILABLE="$(pyenv virtualenvwrapper --version 2>&1 >/dev/null)"

if [[ ${PYENV_VIRTUALENVWRAPPER_IS_AVAILABLE} == '' ]]; then
    echo -e "${bakgrn}[installed][pyenv virtualenvwrapper]${txtrst}" ;
else
    echo -e "${bakcyn}[pyenv virtualenvwrapper] Start Install ${txtrst}";
    brew install pyenv-virtualenvwrapper
    echo -e "${bakgrn}[pyenv virtualenvwrapper] Finish Install ${txtrst}";
fi
