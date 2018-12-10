#!/bin/sh

DOCKER_IS_AVAILABLE="$(docker -v 2>&1 >/dev/null)"

if [[ ${DOCKER_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][Docker]${txtrst} already installed ;)" ;

else

	echo -e "${bakcyn}[Docker] Start Install ${txtrst}";

#	wget -qO- https://get.docker.com/ | sh;
#	service docker start ;
#	usermod -aG docker $DOTFILE_DEFAULT_USER ;
#	chkconfig docker on ;
    dnf -y install dnf-plugins-core
    dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
    dnf config-manager --set-enabled docker-ce-edge
    dnf config-manager --set-enabled docker-ce-test
    dnf install -y docker-ce
	service docker start
	usermod -aG docker $DOTFILE_DEFAULT_USER
	chkconfig docker on

	echo -e "${bakgrn}[Docker] Finish Install ${txtrst}";

fi