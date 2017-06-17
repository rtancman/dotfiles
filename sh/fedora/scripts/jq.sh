#!/bin/sh

JQ_IS_AVAILABLE="$(jq --version 2>&1 >/dev/null)"

if [[ ${JQ_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][jq]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[jq] Start Install ${txtrst}";
	
	sudo dnf install -y jq;

	echo -e "${bakgrn}[jq] Finish Install ${txtrst}";

fi