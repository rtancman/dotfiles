#!/bin/sh

YARN_IS_AVAILABLE="$(yarn --version 2>&1 >/dev/null)"

if [[ ${YARN_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][yarn]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[yarn] Start Install ${txtrst}";

  curl --silent --location https://dl.yarnpkg.com/rpm/yarn.repo | sudo tee /etc/yum.repos.d/yarn.repo
  dnf install yarn

	echo -e "${bakgrn}[yarn] Finish Install ${txtrst}";

fi
