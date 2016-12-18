#!/bin/sh

SKYPE_IS_AVAILABLE="$(skype --version 2>&1 >/dev/null)"

if [[ ${SKYPE_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][Skype]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[Skype] Start Install ${txtrst}";

	dpkg --add-architecture i386
	aptitude update
	aptitude install -y libc6:i386 libqt4-dbus:i386 libqt4-network:i386 libqt4-xml:i386 libqtcore4:i386 libqtgui4:i386 libqtwebkit4:i386 libstdc++6:i386 libx11-6:i386 libxext6:i386 libxss1:i386 libxv1:i386 libssl1.0.0:i386 libpulse0:i386 libasound2-plugins:i386
	wget -O skype-install.deb http://www.skype.com/go/getskype-linux-deb
	dpkg -i skype-install.deb
	rm -rf skype-install.deb
	
	echo -e "${bakgrn}[Skype] Finish Install ${txtrst}";

fi
