#!/bin/sh


if [[ -e "/opt/robomongo" ]]; then

    echo -e "${bakgrn}[installed][robomongo]${txtrst} already installed ;)" ;

else

    echo -e "${bakcyn}[common][robomongo] Start Install ${txtrst}";

    wget https://download.robomongo.org/1.2.1/linux/robo3t-1.2.1-linux-x86_64-3e50a65.tar.gz
    mkdir -p /opt/robomongo/icons
    tar xzf robo3t-1.2.1-linux-x86_64-3e50a65.tar.gz -C /opt/robomongo
    cp ./sh/common/robomongo/icons/logo-256x256.png /opt/robomongo/icons/logo-256x256.png
    rm -rf robo3t-1.2.1-linux-x86_64-3e50a65.tar.gz

echo -e '[Desktop Entry]
Name=Robomongo
GenericName=Robomongo
Exec=/opt/robomongo/robo3t-1.2.1-linux-x86_64-3e50a65/bin/robo3t
Terminal=false
Icon=/opt/robomongo/icons/logo-256x256.png
Type=Application
Categories=Application;
Comment=Robomongo' > /opt/robomongo/robomongo.desktop;

    rm -rf /usr/share/applications/robomongo.desktop
    ln -s /opt/robomongo/robomongo.desktop /usr/share/applications/robomongo.desktop

    echo -e "${bakcyn}[common][robomongo] Finish Install ${txtrst}";

fi

