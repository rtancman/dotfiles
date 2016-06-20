#!/bin/sh

if [[ -e "/opt/meetfranz" ]]; then

    echo -e "${bakgrn}[installed][meetfranz]${txtrst} already installed ;)" ;   

else

    echo -e "${bakcyn}[common][meetfranz] Start Install ${txtrst}";

    curl -L https://gist.githubusercontent.com/rtancman/dd47d2ce894f2ff81a1706a2df266f28/raw/b91c9ee642e2bf2c267e019a3bae5297a1c180e0/install%2520meetfranz | sh
    
    echo -e "${bakcyn}[common][meetfranz] Finish Install ${txtrst}";

fi

