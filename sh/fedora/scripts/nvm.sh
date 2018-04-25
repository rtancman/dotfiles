#!/bin/sh

NVM_IS_AVAILABLE="$(nvm --version 2>&1 >/dev/null)"

if [[ ${NVM_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][nvm]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[nvm] Start Install ${txtrst}";

    wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.10/install.sh | sudo -u $DOTFILE_DEFAULT_USER bash

	echo -e "${bakgrn}[nvm] Finish Install ${txtrst}";

fi
