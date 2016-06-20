#!/bin/sh

if [[ -e "/opt/telegram" ]]; then

    echo -e "${bakgrn}[installed][Telegram]${txtrst} already installed ;)" ;	

else

    echo -e "${bakcyn}[common][Telegram] Start Install ${txtrst}";

    curl -L https://gist.githubusercontent.com/rtancman/076ac19057930bf93b9b84e36250c9cd/raw/be0f79f8960cf38bf05ce6a07b2285a5083856c0/Install%2520Telegram | sh
    
    echo -e "${bakcyn}[common][Telegram] Finish Install ${txtrst}";

fi

