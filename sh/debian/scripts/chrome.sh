#!/bin/sh

CHROME_IS_AVAILABLE="$(google-chrome --version 2>&1 >/dev/null)"

if [[ ${CHROME_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][Google Chrome]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[Google Chrome] Start Install ${txtrst}";

	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
	sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
	apt-get update
	apt-get install -y google-chrome-stable

	echo -e "${bakgrn}[Google Chrome] Finish Install ${txtrst}";
fi