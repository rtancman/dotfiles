#!/bin/sh

PHPCLI_IS_AVAILABLE="$(php --version 2>&1 >/dev/null)"

if [[ ${PHPCLI_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][PHP cli]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[PHP cli] Start Install ${txtrst}";
	
	dnf install -y php-cli;
	
	echo -e "${bakgrn}[PHP cli] Finish Install ${txtrst}";

fi