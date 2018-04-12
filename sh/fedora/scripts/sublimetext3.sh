#!/bin/sh
SUBLIME_IS_AVAILABLE="$(subl -v 2>&1 >/dev/null)"

if [[ ${SUBLIME_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][Sublime Text 3]${txtrst} already installed ;)" ;

else

    echo -e "${bakcyn}[Sublime Text 3] Start Install ${txtrst}";

    rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
    dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
    sudo dnf install sublime-text

    echo -e "${bakgrn}[Sublime Text 3] Finish Install ${txtrst}";

fi
