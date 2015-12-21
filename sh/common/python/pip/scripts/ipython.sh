#!/bin/sh

IPYTHON_IS_AVAILABLE="$(ipython --version 2>&1 >/dev/null)";
IPYTHON_PYTHON_VERSION="$(python --version 2>&1 >/dev/null)";

if [[ ${IPYTHON_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][ipython notebook]${txtrst} already installed ;)" ;

elif [[ !(${IPYTHON_PYTHON_VERSION} =~ 'Python 3.5') ]]; then
    
    echo -e "${bakred}[error][ipython notebook]${txtrst} you need to install Python 3.5" ;
    	
else

	echo -e "${bakcyn}[ipython notebook] Start Install ${txtrst}";

	pip install ipython[notebook] ;

	echo -e "${bakgrn}[ipython notebook] Finish Install ${txtrst}";

fi