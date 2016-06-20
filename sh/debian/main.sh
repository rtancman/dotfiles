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
. sh/common/telegram/main.sh;
. sh/common/ngrok/main.sh;
. sh/debian/scripts/git-flow.sh;
. sh/common/git-flow-completion/main.sh;
. sh/common/meetfranz/main.sh;

echo -e "\n${bakblu}[Debian][Install][Finish]${txtrst}";