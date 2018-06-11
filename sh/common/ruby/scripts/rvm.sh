#!/bin/sh

RVM_IS_AVAILABLE="$(rvm version 2>&1 >/dev/null)"

if [[ ${RVM_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][rvm]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[rvm] Start Install ${txtrst}";

    su - $DOTFILE_DEFAULT_USER gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
    curl -sSL https://get.rvm.io | su - $DOTFILE_DEFAULT_USER bash -s stable
    source /home/$DOTFILE_DEFAULT_USER/.rvm/scripts/rvm

	echo -e "${bakgrn}[rvm] Finish Install ${txtrst}";

fi
