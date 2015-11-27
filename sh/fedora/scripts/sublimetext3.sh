#!/bin/sh

SUBLIME_IS_AVAILABLE="$(subl -v 2>&1 >/dev/null)"

if [[ ${SUBLIME_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][Sublime Text 3]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[Sublime Text 3] Start Install ${txtrst}";

	curl -L git.io/vWa6H | sh

	echo -e "${bakgrn}[Sublime Text 3] Finish Install ${txtrst}";

fi