#!/bin/sh

VSCODE_IS_AVAILABLE="$(code --version 2>&1 >/dev/null)"

if [[ ${VSCODE_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][vscode]${txtrst}" ;

else

    echo -e "${bakcyn}[vscode] Start Install ${txtrst}";

    brew install visual-studio-code --cask

    echo -e "${bakgrn}[vscode] Finish Install ${txtrst}";

fi
