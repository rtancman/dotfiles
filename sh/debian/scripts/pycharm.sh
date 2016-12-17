#!/bin/sh

if [ -e "/opt/pycharm/bin/pycharm.sh" ]; then

    echo -e "${bakgrn}[installed][pycharm-community-2016.2.2]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[pycharm-community-2016.2.2] Start Install ${txtrst}";

    wget https://download-cf.jetbrains.com/python/pycharm-community-2016.2.2.tar.gz
    tar zxf pycharm-community-2016.2.2.tar.gz
    mv pycharm-community-2016.2.2/ /opt/pycharm
    /opt/pycharm/bin/pycharm.sh
    rm -rf pycharm-community-2016.2.2.tar.gz

    echo -e "${bakgrn}[pycharm-community-2016.2.2] Finish Install ${txtrst}";

fi
