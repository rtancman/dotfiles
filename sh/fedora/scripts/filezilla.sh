#!/bin/sh

FILEZILLA_IS_AVAILABLE="$(filezilla --version)"

if [[ ${FILEZILLA_IS_AVAILABLE} =~ 'FileZilla' ]]; then

    echo -e "${bakgrn}[installed][filezilla]${txtrst} already installed ;)" ;

else

    echo -e "${bakcyn}[filezilla] Start Install ${txtrst}";

    sudo dnf install -y filezilla;

    echo -e "${bakgrn}[filezilla] Finish Install ${txtrst}";

fi
