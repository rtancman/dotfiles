#!/bin/sh

if [ -d "/Applications/Slack.app" ]; then
    echo -e "${bakgrn}[installed][slack]${txtrst}" ;
else
    echo -e "${bakcyn}[slack] Start Install ${txtrst}";

    brew install slack --cask

    echo -e "${bakgrn}[slack] Finish Install ${txtrst}";
fi
