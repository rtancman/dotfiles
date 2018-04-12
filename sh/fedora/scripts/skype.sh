#!/bin/sh

SKYPE_IS_AVAILABLE="$(dnf list installed | grep skypeforlinux)"

if [[ ${SKYPE_IS_AVAILABLE} != '' ]]; then

    echo -e "${bakgrn}[installed][Skype]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[Skype] Start Install ${txtrst}";

  dnf -y install skypeforlinux

	echo -e "${bakgrn}[Skype] Finish Install ${txtrst}";

fi
