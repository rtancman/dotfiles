#!/bin/sh

PIP_IS_AVAILABLE="$(pip --version 2>&1 >/dev/null)"

if [[ ${PIP_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][Pip python]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[Pip python] Start Install ${txtrst}";

	apt-get install python-pip -y;

	echo -e "${bakgrn}[Pip python] Finish Install ${txtrst}";

fi