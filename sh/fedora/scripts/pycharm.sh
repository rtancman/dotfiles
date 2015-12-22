#!/bin/sh

if [ -e "/opt/pycharm/bin/pycharm.sh" ]; then

    echo -e "${bakgrn}[installed][pycharm 5.0.2]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[pycharm-9] Start Install ${txtrst}";

    wget https://download.jetbrains.com/python/pycharm-professional-5.0.2.tar.gz;
    tar zxf pycharm-professional-5.0.2.tar.gz;
    mv pycharm-5.0.2/ /opt/pycharm; 
    currentpath="$(pwd)";
    cd /opt/pycharm;
    ./bin/pycharm.sh;
    cd $currentpath;
    rm -rf pycharm-professional-5.0.2.tar.gz;

    echo -e "${bakgrn}[pycharm 5.0.2] Finish Install ${txtrst}";

fi