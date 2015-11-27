#!/bin/sh

SKYPE_IS_AVAILABLE="$(skype --version 2>&1 >/dev/null)"

if [[ ${SKYPE_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][Skype]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[Skype] Start Install ${txtrst}";

	wget http://download.skype.com/linux/skype-4.3.0.37-fedora.i586.rpm ;
	dnf install -y skype-4.3.0.37-fedora.i586.rpm ;
	rm -rf skype-4.3.0.37-fedora.i586.rpm ;

	echo -e "${bakgrn}[Skype] Finish Install ${txtrst}";

fi
