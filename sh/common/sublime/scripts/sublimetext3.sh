#!/bin/sh

# http://www.simonewebdesign.it/install-sublime-text-3-on-fedora-20/

SUBLIME_IS_AVAILABLE="$(subl -v 2>&1 >/dev/null)"

if [[ ${SUBLIME_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][Sublime Text 3]${txtrst} already installed ;)" ;

else

    echo -e "${bakcyn}[Sublime Text 3] Start Install ${txtrst}";

    curl -L https://gist.githubusercontent.com/rtancman/1ebe8633338df3319038/raw/d6aa059499081f740757a16bf234ec23a639a8fc/install_sublime_text.sh | sh

    echo -e "${bakgrn}[Sublime Text 3] Finish Install ${txtrst}";

fi
