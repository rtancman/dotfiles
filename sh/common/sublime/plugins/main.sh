#!/bin/sh

SUBLIME_CONFIG_DIR="/home/$DOTFILE_DEFAULT_USER/.config/sublime-text-3"

echo -e "${bakcyn}[common][Sublime Text 3 Plugins] Start Install ${txtrst}";

if [[ -e "/opt/sublime_text" ]]; then

	. sh/common/sublime/plugins/scripts/packagecontrol.sh;
	. sh/common/sublime/plugins/scripts/packagecontrol-plugins.sh;

else

	echo -e "${bakred}[error][Sublime Text 3 Plugins]${txtrst} you need to install Sublime Text 3" ;

fi

echo -e "${bakcyn}[common][Sublime Text 3 Plugins] Finish Install ${txtrst}";
