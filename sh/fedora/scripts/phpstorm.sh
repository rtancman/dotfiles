#!/bin/sh

if [ -e "/opt/phpstorm/bin/phpstorm.sh" ]; then

    echo -e "${bakgrn}[installed][PhpStorm-9]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[PhpStorm-9] Start Install ${txtrst}";

    wget http://download-cf.jetbrains.com/webide/PhpStorm-9.0.2.tar.gz ;
    tar zxf PhpStorm-9.0.2.tar.gz ;
    mv PhpStorm-141.2462/ /opt/phpstorm ; 
    currentpath="$(pwd)" ;
    cd /opt/phpstorm ;
    ./bin/phpstorm.sh ;
    cd $currentpath ;
    rm -rf PhpStorm-9.0.2.tar.gz ;

    echo -e "${bakgrn}[PhpStorm-9] Finish Install ${txtrst}";

fi