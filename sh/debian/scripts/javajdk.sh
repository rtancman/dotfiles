#!/bin/sh

JAVA_IS_AVAILABLE="$(java -version 2>&1 >/dev/null)"

if [[ ${JAVA_IS_AVAILABLE} =~ 'Java(TM) SE Runtime Environment' ]]; then
    
    echo -e "${bakgrn}[installed][Java JDK e JRE]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[Java JDK e JRE] Start Install ${txtrst}";
	
	echo "deb http://httpredir.debian.org/debian/ jessie main contrib" > /etc/apt/sources.list.d/httpredir.list
	echo -e "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main
	deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" >> /etc/apt/sources.list.d/java-8-debian.list
	apt-get update
	apt-get install -y --force-yes oracle-java8-installer oracle-java8-set-default

	echo -e "${bakgrn}[Java JDK e JRE] Finish Install ${txtrst}";

fi
