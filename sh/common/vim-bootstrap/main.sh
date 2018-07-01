#!/bin/sh

if [[ -e /home/$DOTFILE_DEFAULT_USER/.vimrc ]]; then

    echo -e "${bakgrn}[installed][vim-bootstrap]${txtrst} already installed ;)" ;

else

    echo -e "${bakcyn}[common][vim-bootstrap] Start Install ${txtrst}";

    # cp ./sh/common/vim-bootstrap/generate.vim /home/$DOTFILE_DEFAULT_USER/.vimrc;
    # chown $DOTFILE_DEFAULT_USER:$DOTFILE_DEFAULT_USER /home/$DOTFILE_DEFAULT_USER/.vimrc;
    # su - $DOTFILE_DEFAULT_USER -c "vim +PlugInstall +qall";
    curl -X POST -d 'langs=c&langs=elixir&langs=elm&langs=erlang&langs=go&langs=html&langs=javascript&langs=php&langs=python&langs=ruby&editor=vim' https://vim-bootstrap.com/generate.vim >> /home/$DOTFILE_DEFAULT_USER/.vimrc
    chown $DOTFILE_DEFAULT_USER:$DOTFILE_DEFAULT_USER /home/$DOTFILE_DEFAULT_USER/.vimrc;

    echo -e "${bakcyn}[common][vim-bootstrap] Finish Install ${txtrst}";

fi
