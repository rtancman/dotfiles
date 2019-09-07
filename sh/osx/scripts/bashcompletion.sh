#!/bin/sh

BASHCOMPLETION_IS_AVAILABLE="$(brew list | grep bash-completion)"

if [[ ${BASHCOMPLETION_IS_AVAILABLE} == 'bash-completion' ]]; then

    echo -e "${bakgrn}[installed][bash-completion]${txtrst}" ;

else

    echo -e "${bakcyn}[bash-completion] Start Install ${txtrst}";

    brew install bash-completion

    echo -e "${bakgrn}[bash-completion] Finish Install ${txtrst}";

fi
