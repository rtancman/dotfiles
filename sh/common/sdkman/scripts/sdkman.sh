#!/bin/sh

if [ -d "$HOME/.sdkman" ]; then
    echo -e "${bakgrn}[installed][sdkman]${txtrst}" ;
else
    echo -e "${bakcyn}[sdkman] Start Install ${txtrst}";
    curl -s "https://get.sdkman.io" | bash
    echo -e "${bakgrn}[sdkman] Finish Install ${txtrst}";
fi

