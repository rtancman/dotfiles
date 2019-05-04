#!/bin/sh

TMUX_IS_AVAILABLE="$(tmux -V 2>&1 >/dev/null)"

if [[ ${TMUX_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][tmux]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[tmux] Start Install ${txtrst}";

	dnf install -y tmux

	cp ./sh/common/tmux/.tmux.conf /home/$DOTFILE_DEFAULT_USER/.tmux.conf	
	chown $DOTFILE_DEFAULT_USER:$DOTFILE_DEFAULT_USER /home/$DOTFILE_DEFAULT_USER/.tmux.conf

	echo -e "${bakgrn}[tmux] Finish Install ${txtrst}";

fi