#!/bin/sh

if [ -f ~/.nvm/nvm.sh ]; then

    echo -e "${bakgrn}[installed][nvm]${txtrst}" ;

else

    echo -e "${bakcyn}[nvm] Start Install ${txtrst}";

    curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.8/install.sh | bash

    echo -e "${bakgrn}[nvm] Finish Install ${txtrst}";

fi
