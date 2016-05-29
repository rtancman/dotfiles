#!/bin/sh

GITBRANCHINPROMPT_IS_AVAILABLE=""

if [[ ${GITBRANCHINPROMPT_IS_AVAILABLE} == '' && -e "" ]]; then
    
    echo -e "${bakgrn}[installed][git-branch-in-prompt]${txtrst} already installed ;)" ;
    
else

    echo -e "${bakcyn}[git-branch-in-prompt] Start Install ${txtrst}";

    echo -e "# Git branch in prompt." >> /home/$DOTFILE_DEFAULT_USER/.bashrc;
    echo -e "parse_git_branch() {" >> /home/$DOTFILE_DEFAULT_USER/.bashrc;
    echo -e "    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'" >> /home/$DOTFILE_DEFAULT_USER/.bashrc;
    echo -e "}" >> /home/$DOTFILE_DEFAULT_USER/.bashrc;
    echo -e 'export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ " ' >> /home/$DOTFILE_DEFAULT_USER/.bashrc;
    
    echo -e "${bakgrn}[git-branch-in-prompt] Finish Install ${txtrst}";

fi