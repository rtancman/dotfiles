#!/bin/sh

ZEAL_IS_AVAILABLE="$(dnf list installed | grep zeal)"

if [[ ${ZEAL_IS_AVAILABLE} != '' ]]; then

    echo -e "${bakgrn}[installed][Zeal Docs]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[Zeal Docs] Start Install ${txtrst}";

	dnf install -y zeal;

	echo -e "${bakgrn}[Zeal Docs] Finish Install ${txtrst}";

fi
