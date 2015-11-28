#!/bin/sh

DOCKERCOMPOSE_IS_AVAILABLE="$(docker-compose -v 2>&1 >/dev/null)"

if [[ ${DOCKERCOMPOSE_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][Docker Compose]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[Docker Compose] Start Install ${txtrst}";

	pip install -U docker-compose ;
	chmod +x /usr/local/bin/docker-compose ;

	echo -e "${bakgrn}[Docker Compose] Finish Install ${txtrst}";

fi