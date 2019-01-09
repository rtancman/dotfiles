#!/bin/sh

PEEK_IS_AVAILABLE="$(peek --version 2>&1 >/dev/null)"

if [[ ${PEEK_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][peek]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[peek] Start Install ${txtrst}";

    dnf config-manager --add-repo https://download.opensuse.org/repositories/home:/phiwo:/peek/Fedora_26/home:phiwo:peek.repo
    dnf install -y peek ffmpeg gstreamer1-plugins-ugly

	echo -e "${bakgrn}[peek] Finish Install ${txtrst}";

fi
