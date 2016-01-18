#!/bin/sh

ZEAL_IS_AVAILABLE="$(zeal --version 2>&1 >/dev/null)"

if [[ ${ZEAL_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][Zeal Docs]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[Zeal Docs] Start Install ${txtrst}";
	
	dnf install -y zeal;
	
	echo -e "${bakgrn}[Zeal Docs] Finish Install ${txtrst}";

fi