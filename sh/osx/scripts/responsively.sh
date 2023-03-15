
#!/bin/sh

RESPONSIVELY_IS_AVAILABLE="$(brew list --cask | grep responsively)"

if [[ ${RESPONSIVELY_IS_AVAILABLE} == 'responsively' ]]; then

    echo -e "${bakgrn}[installed][responsively]${txtrst}" ;

else

    echo -e "${bakcyn}[responsively] Start Install ${txtrst}";

    brew install responsively --cask

    echo -e "${bakgrn}[responsively] Finish Install ${txtrst}";

fi
