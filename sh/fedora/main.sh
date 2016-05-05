#!/bin/sh

echo -e "${bakblu}[Fedora][Install][Start]${txtrst}\n";

echo -e "${bakblu}[Fedora]${txtrst} run update";

# dnf update -y;

echo -e "${bakblu}[Fedora]${txtrst} finish update\n";

. sh/fedora/scripts/tools.sh;
. sh/fedora/scripts/ruby.sh;
. sh/fedora/scripts/git.sh;
. sh/fedora/scripts/svn.sh;
. sh/fedora/scripts/sublimetext3.sh;
. sh/fedora/scripts/skype.sh;
. sh/fedora/scripts/chrome.sh;
. sh/fedora/scripts/virtualbox.sh;
. sh/fedora/scripts/docker.sh;
. sh/fedora/scripts/pip.sh;
. sh/common/python/main.sh;
. sh/fedora/scripts/javajdk.sh;
# . sh/fedora/scripts/spotify.sh;
# . sh/fedora/scripts/slack.sh;
. sh/fedora/scripts/phpstorm.sh;
. sh/fedora/scripts/pycharm.sh;
. sh/common/heroku/main.sh;
. sh/fedora/scripts/teamviewer.sh;
. sh/fedora/scripts/zeal.sh;
. sh/common/sublimetext3plugins/main.sh;
. sh/fedora/scripts/php.sh;
. sh/fedora/scripts/vlc.sh;
. sh/common/vim-bootstrap/main.sh;
. sh/common/telegram/main.sh;
. sh/common/ngrok/main.sh;

echo -e "\n${bakblu}[Fedora][Install][Finish]${txtrst}";