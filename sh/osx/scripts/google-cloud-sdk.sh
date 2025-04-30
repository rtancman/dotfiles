#!/bin/sh

if command -v gcloud >/dev/null 2>&1; then
    echo -e "${bakgrn}[installed][google cloud sdk]${txtrst}" ;
else
    echo -e "${bakcyn}[google cloud sdk] Start Install ${txtrst}";
    curl https://sdk.cloud.google.com | bash
    echo -e "${bakgrn}[google cloud sdk] Finish Install ${txtrst}";
fi