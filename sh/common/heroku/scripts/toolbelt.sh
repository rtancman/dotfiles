#!/bin/sh

TOOBELT_IS_AVAILABLE="$(su - $DOTFILE_DEFAULT_USER heroku --version 2>&1 >/dev/null)"

if [[ ${TOOBELT_IS_AVAILABLE} == '' || -e "/home/$DOTFILE_DEFAULT_USER/.heroku" || -e /usr/local/heroku/bin/heroku ]]; then

    echo -e "${bakgrn}[installed][toolbelt]${txtrst} already installed ;)" ;

else

    echo -e "${bakcyn}[toolbelt] Start Install ${txtrst}";
    # wget -O- https://toolbelt.heroku.com/install.sh | sh ;
    # echo -e '' >> /home/$DOTFILE_DEFAULT_USER/.bashrc;
    # echo -e '# heroku toolbelt' >> /home/$DOTFILE_DEFAULT_USER/.bashrc;
    # echo -e 'PATH="/usr/local/heroku/bin:$PATH"' >> /home/$DOTFILE_DEFAULT_USER/.bashrc ;
    # wget -O- https://cli-assets.heroku.com/install-standalone.sh | sh
    # npm install -g heroku
    echo -e "${bakgrn}[toolbelt] Finish Install ${txtrst}";

fi
