#!/bin/sh

GIT_IS_AVAILABLE="$(git --version 2>&1 >/dev/null)"

if [[ ${GIT_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][Git]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[Git] Start Install ${txtrst}";
	
	apt-get install git-core -y;
	
	echo -e "${bakgrn}[Git] Finish Install ${txtrst}";

fi