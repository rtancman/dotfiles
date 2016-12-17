#!/bin/sh

# http://www.simonewebdesign.it/install-sublime-text-3-on-fedora-20/

SUBLIME_IS_AVAILABLE="$(subl -v 2>&1 >/dev/null)"

if [[ ${SUBLIME_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][Sublime Text 3]${txtrst} already installed ;)" ;

else

    echo -e "${bakcyn}[Sublime Text 3] Start Install ${txtrst}";

    wget https://download.sublimetext.com/sublime-text_build-3126_amd64.deb
	dpkg -i sublime-text_build-3126_amd64.deb
	rm -rf sublime-text_build-3126_amd64.deb

    echo -e "${bakgrn}[Sublime Text 3] Finish Install ${txtrst}";

fi