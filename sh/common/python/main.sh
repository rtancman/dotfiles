#!/bin/sh

echo -e "${bakcyn}[common][python] Start Install ${txtrst}";

. sh/common/python/pip/main.sh;
. sh/common/python/scripts/pyenv.sh;
. sh/common/python/scripts/pyenv-virtualenv.sh;
. sh/common/python/scripts/pyenv-virtualenvwrapper.sh;

echo -e "${bakcyn} Remember ${txtrst}";
echo -e "after install run $ bash ./dotfiles/sh/common/python/scripts/python-workspace_venv.sh

"
echo -e "${bakcyn}[common][python] Finish Install ${txtrst}";