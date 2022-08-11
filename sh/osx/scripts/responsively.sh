
#!/bin/sh

RESPONSIVELY_IS_AVAILABLE="$(brew cask list | grep responsively)"

if [[ ${RESPONSIVELY_IS_AVAILABLE} == 'responsively' ]]; then

    echo -e "${bakgrn}[installed][responsively]${txtrst}" ;

else

    echo -e "${bakcyn}[responsively] Start Install ${txtrst}";

    brew cask install responsively

    echo -e "${bakgrn}[responsively] Finish Install ${txtrst}";

fi
