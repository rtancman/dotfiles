
#!/bin/sh

REDIS_IS_AVAILABLE="$(redis-cli --version 2>&1 >/dev/null)"

if [[ ${REDIS_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][redis]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[redis] Start Install ${txtrst}";

	sudo dnf install -y redis;

	echo -e "${bakgrn}[redis] Finish Install ${txtrst}";

fi
