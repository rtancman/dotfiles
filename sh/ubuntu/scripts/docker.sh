#!/bin/sh

DOCKER_IS_AVAILABLE="$(docker -v 2>&1 >/dev/null)"

if [[ ${DOCKER_IS_AVAILABLE} == '' ]]; then
    
    echo -e "${bakgrn}[installed][Docker]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[Docker] Start Install ${txtrst}";

 #    apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D ;
 #    if [[ ${osrelease} =~ '15.10' ]]; then
 #        echo "deb https://apt.dockerproject.org/repo ubuntu-wily main" | tee /etc/apt/sources.list.d/docker.list ;
 #    elif [[ ${osrelease} =~ '15.04' ]]; then
 #        echo "deb https://apt.dockerproject.org/repo ubuntu-vivid main" | tee /etc/apt/sources.list.d/docker.list ;
 #    elif [[ ${osrelease} =~ '14.04' ]]; then
 #        echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | tee /etc/apt/sources.list.d/docker.list ;
 #    elif [[ ${osrelease} =~ '12.04' ]]; then
 #        echo "deb https://apt.dockerproject.org/repo ubuntu-precise main" | tee /etc/apt/sources.list.d/docker.list ;
 #    else
 #        echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | tee /etc/apt/sources.list.d/docker.list ;
 #    fi
	# apt-get update ;
 #    apt-get purge lxc-docker ;
 #    apt-cache policy docker-engine ;
 #    apt-get install linux-image-extra-$(uname -r) -y ;
 #    apt-get install docker-engine -y;
	# service docker start ;
	# usermod -aG docker $DOTFILE_DEFAULT_USER;
	# service docker restart;

    wget -qO- https://get.docker.com/ | sh;
    service docker start ;
    usermod -aG docker $DOTFILE_DEFAULT_USER;
    service docker restart;

	echo -e "${bakgrn}[Docker] Finish Install ${txtrst}";

fi