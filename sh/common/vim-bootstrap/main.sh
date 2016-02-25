#!/bin/sh

echo -e "${bakcyn}[common][vim-bootstrap] Start Install ${txtrst}";

mv sh/common/vim-bootstrap/generate.vim /home/$DOTFILE_DEFAULT_USER/.vimrc;
chmod $DOTFILE_DEFAULT_USER:$DOTFILE_DEFAULT_USER /home/$DOTFILE_DEFAULT_USER/.vimrc;
su - $DOTFILE_DEFAULT_USER -c "vim +NeoBundleInstall +qall";

echo -e "${bakcyn}[common][vim-bootstrap] Finish Install ${txtrst}";