#!/bin/sh

VIM_IS_AVAILABLE="$(vim --version 2>&1 >/dev/null)"

if [[ ${VIM_IS_AVAILABLE} == '' ]]; then
    echo -e "${bakgrn}[installed][virtualbox]${txtrst}" ;
else
    echo -e "${bakcyn}[virtualbox] Start Install ${txtrst}";
    brew install mercurial vim
    echo -e "${bakgrn}[virtualbox] Finish Install ${txtrst}";
fi

GVIM_IS_AVAILABLE="$(mvim --version 2>&1 >/dev/null)"

if [[ ${GVIM_IS_AVAILABLE} == '' ]]; then
    echo -e "${bakgrn}[installed][macvim]${txtrst}" ;
else
    echo -e "${bakcyn}[macvim] Start Install ${txtrst}";
    brew install macvim
    echo -e "${bakgrn}[macvim] Finish Install ${txtrst}";
fi

if [ ! -f ~/.vimrc ]; then
  cp sh/osx/scripts/generate.vim ~/.vimrc
fi


if [ ! -f ~/.gvimrc ]; then
  cp sh/osx/scripts/generate.vim ~/.gvimrc
fi
