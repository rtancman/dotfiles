#!/bin/sh

DOCKER_IS_AVAILABLE="$(docker -v 2>&1 >/dev/null)"

if [[ ${DOCKER_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][Docker]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[Docker] Start Install ${txtrst}";

    wget -qO- https://get.docker.com/ | sh;
    service docker start ;
    usermod -aG docker $DOTFILE_DEFAULT_USER;
    service docker restart;

	echo -e "${bakgrn}[Docker] Finish Install ${txtrst}";

fi