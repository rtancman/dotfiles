#!/bin/sh

if [[ -e /home/$DOTFILE_DEFAULT_USER/.gvm/bin/gvm ]]; then

    echo -e "${bakgrn}[installed][Go gvm]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[Go gvm] Start Install ${txtrst}";

    sudo -u $DOTFILE_DEFAULT_USER bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

    echo -e "${bakgrn}[Go gvm] Finish Install ${txtrst}";

fi
