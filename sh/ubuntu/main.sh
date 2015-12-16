#!/bin/sh


echo -e "${bakblu}[Ubuntu][Install][Start]${txtrst}\n";

echo -e "${bakblu}[Ubuntu]${txtrst} run update";

apt-get update -y;

echo -e "${bakblu}[Ubuntu]${txtrst} finish update\n";

. sh/debian/scripts/git.sh ;
. sh/debian/scripts/docker.sh ;
. sh/debian/scripts/pip.sh ;
. sh/debian/scripts/docker-compose.sh ;
. sh/fedora/scripts/mps-youtube.sh ;

echo -e "\n${bakblu}[Ubuntu][Install][Finish]${txtrst}";