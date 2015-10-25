#!/bin/sh

echo -e "${bakcyn}[Docker] Start Install ${txtrst}";

wget -qO- https://get.docker.com/ | sh;
service docker start ;
usermod -aG docker rtancman ;
chkconfig docker on ;

echo -e "${bakgrn}[Docker] Finish Install ${txtrst}";

