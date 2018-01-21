#!/bin/sh

if grep -r '#  >>>> start bash_profile' ~/.bash_profile; then

    echo -e "${bakgrn}[installed][bash_profile]${txtrst}" ;

else

    echo -e "${bakcyn}[bash_profile] Start Install ${txtrst}";

    cat sh/common/bashrc/scripts/example_bash_profile >> ~/.bash_profile

    echo -e "${bakgrn}[bash_profile] Finish Install ${txtrst}";

fi
