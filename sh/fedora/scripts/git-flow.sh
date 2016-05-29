#!/bin/sh

if [[ -e /usr/bin/git-flow ]]; then
    
    echo -e "${bakgrn}[installed][Git Flow]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[Git Flow] Start Install ${txtrst}";
	
	dnf install -y gitflow;
	
	echo -e "${bakgrn}[Git Flow] Finish Install ${txtrst}";

fi