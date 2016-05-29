#!/bin/sh

if [[ -e "/opt/telegram" ]]; then

    echo -e "${bakgrn}[installed][Telegram]${txtrst} already installed ;)" ;	

else

    echo -e "${bakcyn}[common][Telegram] Start Install ${txtrst}";

    curl -L https://gist.githubusercontent.com/rtancman/076ac19057930bf93b9b84e36250c9cd/raw/4a52b6d98928110dcf79e8cd200ddc90a09b94bf/Install%2520Telegram | sh
    
    echo -e "${bakcyn}[common][Telegram] Finish Install ${txtrst}";

fi

