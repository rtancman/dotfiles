#!/bin/sh

# dnf update -y;

. sh/fedora/scripts/git.sh ;
. sh/fedora/scripts/sublimetext3.sh ;
. sh/fedora/scripts/skype.sh ;
. sh/fedora/scripts/chrome.sh ;
. sh/fedora/scripts/virtualbox.sh ;
. sh/fedora/scripts/docker.sh ;
. sh/fedora/scripts/pip.sh ;
. sh/fedora/scripts/docker-compose.sh ;
# . sh/fedora/scripts/spotify.sh ;
. sh/fedora/scripts/slack.sh ;
# . sh/fedora/scripts/phpstorm.sh ;

# dnf install python-dnf-plugins-extras-migrate && dnf-2 migrate ;

echo -e "\n${txtgrn}[Fedora][Install] Finish ;)";
echo -e "${txtrst}" ;
