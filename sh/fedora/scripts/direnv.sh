#!/bin/sh

if [[ -e /home/$DOTFILE_DEFAULT_USER/.gvm/bin/gvm ]]; then

    echo -e "${bakgrn}[installed][direnv]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[direnv] Start Install ${txtrst}";

    dnf install -y direnv

	echo -e "${bakgrn}[direnv] Finish Install ${txtrst}";

fi
