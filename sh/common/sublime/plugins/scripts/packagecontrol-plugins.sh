#!/bin/sh

if [[ -e /home/$DOTFILE_DEFAULT_USER/.config/sublime-text-3/Installed\ Packages/Package\ Control.sublime-package ]]; then

    echo -e "${bakcyn}[Package Control - Plugins] Start Install ${txtrst}";

    cp sh/common/sublime/plugins/scripts/sublime-settings /home/$DOTFILE_DEFAULT_USER/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings;
    chown $DOTFILE_DEFAULT_USER:$DOTFILE_DEFAULT_USER /home/$DOTFILE_DEFAULT_USER/.config/sublime-text-3/Packages/User/Package\ Control.sublime-settings;

    echo -e "${bakgrn}[Package Control - Plugins] Finish Install ${txtrst}";

else

    echo -e "${bakred}[Error][Package Control]${txtrst} not installed ;)" ;

fi
