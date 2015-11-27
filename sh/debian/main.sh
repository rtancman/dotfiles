#!/bin/sh


echo -e "${bakblu}[Debian][Install][Start]${txtrst}\n";

apt-get update -y;

. sh/debian/scripts/git.sh ;
. sh/debian/scripts/docker.sh ;
. sh/debian/scripts/pip.sh ;
. sh/debian/scripts/docker-compose.sh ;

echo -e "\n${bakblu}[Debian][Install][Finish]${txtrst}";