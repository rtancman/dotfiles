
#!/bin/sh

TMATE_IS_AVAILABLE="$(tmate -V 2>&1 >/dev/null)"

if [[ ${TMATE_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][tmate]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[tmate] Start Install ${txtrst}";

	dnf install -y tmate

	echo -e "${bakgrn}[tmate] Finish Install ${txtrst}";

fi
