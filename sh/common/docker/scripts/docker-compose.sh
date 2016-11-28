#!/bin/sh

DOCKERCOMPOSE_IS_AVAILABLE="$(docker-compose --version 2>&1 >/dev/null)"

if [[ ${DOCKERCOMPOSE_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][Docker Compose]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[Docker Compose] Start Install ${txtrst}";

	curl -L "https://github.com/docker/compose/releases/download/1.8.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
	chmod +x /usr/bin/docker-compose

	echo -e "${bakgrn}[Docker Compose] Finish Install ${txtrst}";

fi
