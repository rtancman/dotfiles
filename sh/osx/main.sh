#!/bin/sh

echo -e "${bakblu}[MacOSX][Install][Start]${txtrst}\n";

. sh/osx/scripts/brew.sh;
. sh/osx/scripts/brew-cask.sh;
. sh/osx/scripts/git.sh;
. sh/osx/scripts/the_silver_searcher.sh;
. sh/osx/scripts/jq.sh;
. sh/osx/scripts/python-workspace.sh;
#. sh/osx/scripts/ruby.sh;
#. sh/osx/scripts/svn.sh;
# . sh/osx/scripts/jq-command-line-JSON-processor.sh;
# . sh/osx/scripts/skype.sh;
# . sh/osx/scripts/chrome.sh;
# . sh/osx/scripts/virtualbox.sh;
# . sh/osx/scripts/docker.sh;
# . sh/osx/scripts/pip.sh;
# . sh/common/python/main.sh;
# . sh/common/docker/main.sh;
# . sh/osx/scripts/javajdk.sh;
# . sh/common/heroku/main.sh;
# . sh/osx/scripts/teamviewer.sh;
# . sh/osx/scripts/zeal.sh;
# . sh/osx/scripts/php.sh;
# . sh/osx/scripts/filezilla.sh;
# . sh/osx/scripts/vlc.sh;
# . sh/common/vim-bootstrap/main.sh;
# . sh/common/ngrok/main.sh;
. sh/osx/scripts/sublimetext.sh;
. sh/osx/scripts/atom.sh;
. sh/osx/scripts/franz.sh;


echo -e "\n${bakblu}[MacOSX][Install][Finish]${txtrst}";
