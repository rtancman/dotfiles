#!/bin/sh

ATOM_IS_AVAILABLE="$(atom --version 2>&1 >/dev/null)"

if [[ ${ATOM_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][atom]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[atom] Start Install ${txtrst}";

	wget https://atom-installer.github.com/v1.18.0/atom.x86_64.rpm;
	dnf install -y atom.x86_64.rpm;
	rm -rf atom.x86_64.rpm;

	echo -e "${bakgrn}[atom] Finish Install ${txtrst}";

fi
