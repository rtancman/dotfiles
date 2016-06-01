#!/bin/sh

if [[ -e /home/$DOTFILE_DEFAULT_USER/.git-flow-completion ]]; then
    
    echo -e "${bakgrn}[installed][git-flow-completion]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[common][git-flow-completion] Start Install ${txtrst}";

    cp ./sh/common/git-flow-completion/scripts/.git-flow-completion /home/$DOTFILE_DEFAULT_USER/.git-flow-completion
    chown $DOTFILE_DEFAULT_USER:$DOTFILE_DEFAULT_USER /home/$DOTFILE_DEFAULT_USER/.git-flow-completion
    echo -e "# git-flow-completion" >> /home/$DOTFILE_DEFAULT_USER/.bashrc
    echo -e "source ~/.git-flow-completion" >> /home/$DOTFILE_DEFAULT_USER/.bashrc

    echo -e "${bakcyn}[common][git-flow-completion] Finish Install ${txtrst}";

fi