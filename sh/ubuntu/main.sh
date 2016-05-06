#!/bin/sh


echo -e "${bakblu}[Ubuntu][Install][Start]${txtrst}\n";

echo -e "${bakblu}[Ubuntu]${txtrst} run update";

apt-get update -y;

echo -e "${bakblu}[Ubuntu]${txtrst} finish update\n";

. sh/ubuntu/scripts/git.sh ;
. sh/ubuntu/scripts/docker.sh ;
. sh/ubuntu/scripts/pip.sh ;
. sh/common/python/main.sh ;
. sh/common/heroku/main.sh ;
. sh/common/telegram/main.sh;
. sh/common/ngrok/main.sh;
. sh/ubuntu/scripts/git-flow.sh;

echo -e "\n${bakblu}[Ubuntu][Install][Finish]${txtrst}";