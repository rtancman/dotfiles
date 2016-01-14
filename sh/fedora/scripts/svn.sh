#!/bin/sh

SUBVERSION_IS_AVAILABLE="$(svn --version 2>&1 >/dev/null)"

if [[ ${SUBVERSION_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][subversion]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[subversion] Start Install ${txtrst}";
	
	dnf install -y subversion;
	
	echo -e "${bakgrn}[subversion] Finish Install ${txtrst}";

fi