#!/bin/sh

if [ -e "/opt/phpstorm/bin/phpstorm.sh" ]; then

    echo -e "${bakgrn}[installed][PhpStorm-2016.2.1]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[PhpStorm-2016.2.1] Start Install ${txtrst}";

    wget https://download-cf.jetbrains.com/webide/PhpStorm-2016.2.1.tar.gz;
    tar zxf PhpStorm-2016.2.1.tar.gz;
    mv PhpStorm-162.1889.1/ /opt/phpstorm; 
    /opt/phpstorm/bin/phpstorm.sh
    rm -rf PhpStorm-2016.2.1.tar.gz;

    echo -e "${bakgrn} execute /opt/phpstorm/bin/phpstorm.sh ${txtrst}";
    echo -e "${bakgrn}[PhpStorm-2016.2.1] Finish Install ${txtrst}";

fi