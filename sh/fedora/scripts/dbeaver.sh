#!/bin/sh

DBEAVER_IS_AVAILABLE="$(dnf list installed | grep dbeaver)"

if [[ ${DBEAVER_IS_AVAILABLE} != '' ]]; then

    echo -e "${bakgrn}[installed][dbeaver]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[dbeaver] Start Install ${txtrst}";

  wget https://dbeaver.com/files/dbeaver-ee-latest-stable.x86_64.rpm
	rpm -Uvh ./dbeaver-ee-5.0.1-stable.x86_64.rpm
  rm -rf ./dbeaver-ee-5.0.1-stable.x86_64.rpm

	echo -e "${bakgrn}[dbeaver] Finish Install ${txtrst}";

fi
