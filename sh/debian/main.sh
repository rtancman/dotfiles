#!/bin/sh

echo -e "${bakblu}[Debian][Install][Start]${txtrst}\n"

echo -e "${bakblu}[Debian]${txtrst} run update"

# apt-get update -y

echo -e "${bakblu}[Debian]${txtrst} finish update\n"

. sh/debian/scripts/tools.sh
. sh/debian/scripts/javajdk.sh
. sh/debian/scripts/skype.sh
. sh/debian/scripts/git.sh
. sh/debian/scripts/docker.sh
. sh/common/docker/main.sh
. sh/debian/scripts/pip.sh
. sh/common/python/main.sh
. sh/debian/scripts/php.sh
. sh/debian/scripts/ruby.sh
#. sh/common/heroku/main.sh
# . sh/common/telegram/main.sh
. sh/common/ngrok/main.sh
. sh/debian/scripts/sublimetext3.sh
. sh/common/sublime/main.sh
. sh/debian/scripts/chrome.sh
. sh/debian/scripts/git-flow.sh
. sh/common/git-flow-completion/main.sh
. sh/common/meetfranz/main.sh
. sh/debian/scripts/nodejs.sh
. sh/debian/scripts/pycharm.sh
. sh/debian/scripts/phpstorm.sh
. sh/debian/scripts/teamviewer.sh

echo -e "\n${bakblu}[Debian][Install][Finish]${txtrst}"
