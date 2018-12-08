#!/bin/sh

VSCODE_IS_AVAILABLE="$(code --version 2>&1 >/dev/null)"

if [[ ${VSCODE_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][VSCode]${txtrst} already installed ;)" ;

else

    echo -e "${bakcyn}[VSCode] Start Install ${txtrst}";

    rpm --import https://packages.microsoft.com/keys/microsoft.asc
    sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

    dnf check-update
    dnf install code -y

    echo -e "${bakgrn}[VSCode] Finish Install ${txtrst}";

fi




