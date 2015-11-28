#!/bin/sh


echo -e "${bakblu}[Fedora][Install][Start]${txtrst}\n";

echo -e "${bakblu}[Fedora]${txtrst} run update";

dnf update -y;

echo -e "${bakblu}[Fedora]${txtrst} finish update\n";

. sh/fedora/scripts/git.sh ;
. sh/fedora/scripts/docker.sh ;
. sh/fedora/scripts/pip.sh ;
. sh/fedora/scripts/docker-compose.sh ;

echo -e "\n${bakblu}[Fedora][Install][Finish]${txtrst}";