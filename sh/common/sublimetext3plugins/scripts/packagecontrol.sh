#!/bin/sh

if [[ -e $SUBLIME_CONFIG_DIR/Installed\ Packages/Package\ Control.sublime-package ]]; then
    
    echo -e "${bakgrn}[installed][Package Control]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[Package Control] Start Install ${txtrst}";

    wget https://packagecontrol.io/Package%20Control.sublime-package;
    mv Package\ Control.sublime-package $SUBLIME_CONFIG_DIR/Installed\ Packages/;
    chown $DOTFILE_DEFAULT_USER:$DOTFILE_DEFAULT_USER $SUBLIME_CONFIG_DIR/Installed\ Packages/Package\ Control.sublime-package;
    
    echo -e "${bakgrn}[Package Control] Finish Install ${txtrst}";

fi