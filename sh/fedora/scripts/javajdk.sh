#!/bin/sh

JAVA_IS_AVAILABLE="$(java -version 2>&1 >/dev/null)"

if [[ ${JAVA_IS_AVAILABLE} =~ 'Java(TM) SE Runtime Environment' ]]; then
    
    echo -e "${bakgrn}[installed][Java JDK e JRE]${txtrst} already installed ;)" ;
	
else

	echo -e "${bakcyn}[Java JDK e JRE] Start Install ${txtrst}";

	# http://www.if-not-true-then-false.com/2010/install-sun-oracle-java-jdk-jre-7-on-fedora-centos-red-hat-rhel/

	wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jdk-8u65-linux-x64.rpm
	dnf install -y jdk-8u65-linux-x64.rpm ;
	rm jdk-8u65-linux-x64.rpm ;

	wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u65-b17/jre-8u65-linux-x64.rpm
	dnf install -y jre-8u65-linux-x64.rpm ;
	rm -rf jre-8u65-linux-x64.rpm ;

	## java ##
	alternatives --install /usr/bin/java java /usr/java/jdk1.8.0_65/jre/bin/java 200000 ;

	## javaws ##
	alternatives --install /usr/bin/javaws javaws /usr/java/jdk1.8.0_65/jre/bin/javaws 200000 ;
	  
	## Java Browser (Mozilla) Plugin 64-bit ##
	alternatives --install /usr/lib64/mozilla/plugins/libjavaplugin.so libjavaplugin.so.x86_64 /usr/java/jdk1.8.0_65/jre/lib/amd64/libnpjp2.so 200000 ;
	 
	## Install javac only if you installed JDK (Java Development Kit) package ##
	alternatives --install /usr/bin/javac javac /usr/java/jdk1.8.0_65/bin/javac 200000 ;
	alternatives --install /usr/bin/jar jar /usr/java/jdk1.8.0_65/bin/jar 200000 ;

	# java ##
	alternatives --install /usr/bin/java java /usr/java/jre1.8.0_65/bin/java 200000 ;
	 
	## javaws ##
	alternatives --install /usr/bin/javaws javaws /usr/java/jre1.8.0_65/bin/javaws 200000 ;
	 
	## Java Browser (Mozilla) Plugin 64-bit ##
	alternatives --install /usr/lib64/mozilla/plugins/libjavaplugin.so libjavaplugin.so.x86_64 /usr/java/jre1.8.0_65/lib/amd64/libnpjp2.so 200000 ;

	echo -e "${bakcyn}[Java JDK e JRE] Swap between OpenJDK and Sun/Oracle Java JDK/JRE 6 and 7 versions ${txtrst}";

	whiptail --msgbox "[Java JDK e JRE] Swap between OpenJDK and Sun/Oracle Java JDK/JRE 6 and 7 versions" 10 100 && \

	alternatives --config java ;

	echo -e "${bakcyn}[Java JDK e JRE] Swap between javaws versions ${txtrst}";

	whiptail --msgbox "[Java JDK e JRE] Swap between javaws versions" 10 100 && \ 

	alternatives --config javaws ;

	echo -e "${bakgrn}[Java JDK e JRE] Finish Install ${txtrst}";

fi
