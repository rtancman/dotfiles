#!/bin/sh

JAVA_IS_AVAILABLE="$(dnf list installed | grep java-1.8.0)"

if [[ ${JAVA_IS_AVAILABLE} != '' ]]; then

    echo -e "${bakgrn}[installed][java-1.8.0]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[java-1.8.0] Start Install ${txtrst}";

	sudo dnf install java-1.8.0

	echo -e "${bakgrn}[java-1.8.0] Finish Install ${txtrst}";

fi
