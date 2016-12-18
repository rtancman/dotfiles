#!/bin/sh

RUBY_IS_AVAILABLE="$(ruby -v 2>&1 >/dev/null)"

if [[ ${RUBY_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][ (> Ruby language]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[ (> Ruby language] Start Install ${txtrst}";

	apt-get install -y ruby-full

	echo -e "${bakgrn}[ (> Ruby language] Finish Install ${txtrst}";

fi