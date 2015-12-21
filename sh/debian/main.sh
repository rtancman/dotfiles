#!/bin/sh


echo -e "${bakblu}[Debian][Install][Start]${txtrst}\n";

echo -e "${bakblu}[Debian]${txtrst} run update";

apt-get update -y;

echo -e "${bakblu}[Debian]${txtrst} finish update\n";


. sh/debian/scripts/git.sh ;
. sh/debian/scripts/docker.sh ;
. sh/debian/scripts/pip.sh ;
. sh/common/python/main.sh ;
. sh/common/heroku/main.sh ;

echo -e "\n${bakblu}[Debian][Install][Finish]${txtrst}";