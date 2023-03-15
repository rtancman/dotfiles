#!/bin/sh

MYSQL_IS_AVAILABLE="$(mysql --version 2>&1 >/dev/null)"

if [[ ${MYSQL_IS_AVAILABLE} == '' ]]; then
    echo -e "${bakgrn}[installed][mysql]${txtrst}" ;
else
    echo -e "${bakcyn}[mysql] Start Install ${txtrst}";
    brew install mysql
    echo -e "${bakgrn}[mysql] Finish Install ${txtrst}";
fi

MYSQLWORKBENCH_IS_AVAILABLE="$(brew list --cask | grep mysqlworkbench)"

if [[ ${MYSQLWORKBENCH_IS_AVAILABLE} == 'mysqlworkbench' ]]; then
    echo -e "${bakgrn}[installed][mysqlworkbench]${txtrst}" ;
else
    echo -e "${bakcyn}[mysqlworkbench] Start Install ${txtrst}";
    brew install mysqlworkbench --cask
    echo -e "${bakgrn}[mysqlworkbench] Finish Install ${txtrst}";
fi
