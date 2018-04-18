#!/bin/sh

MYSQLCOMMUNITY_IS_AVAILABLE="$(dnf list installed | grep mysql-community-server)"

if [[ ${MYSQLCOMMUNITY_IS_AVAILABLE} != '' ]]; then

    echo -e "${bakgrn}[installed][mysql-community-server]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[mysql-community-server] Start Install ${txtrst}";

  dnf install -y https://dev.mysql.com/get/mysql57-community-release-fc27-10.noarch.rpm
  dnf install -y mysql-community-server

	echo -e "${bakgrn}[mysql-community-server] Finish Install ${txtrst}";

fi
