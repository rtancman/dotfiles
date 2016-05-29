#!/bin/sh

NGROK_IS_AVAILABLE="$(ngrok -version 2>&1 >/dev/null)"

if [[ ${NGROK_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][ngrok]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[ngrok] Start Install ${txtrst}";

    wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip
    unzip ngrok-stable-linux-amd64.zip
    mv ngrok /usr/bin/ngrok
    chmod +x /usr/bin/ngrok
    rm -rf ngrok-stable-linux-amd64.zip

    echo -e "${bakgrn}[ngrok] Finish Install ${txtrst}";

fi