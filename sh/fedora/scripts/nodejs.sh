#!/bin/sh

NODEJS_IS_AVAILABLE="$(node -v 2>&1 >/dev/null)";

if [[ ${NODEJS_IS_AVAILABLE} == '' ]]; then
    echo -e "${bakgrn}[installed][NodeJS]${txtrst} already installed ;)" ;
else
	echo -e "${bakcyn}[NodeJS] Start Install ${txtrst}";
    curl --silent --location https://rpm.nodesource.com/setup_10.x | bash -
    dnf install -y nodejs;
    echo -e "${bakgrn}[NodeJS] Finish Install ${txtrst}";
fi