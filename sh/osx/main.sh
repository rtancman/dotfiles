#!/bin/sh

echo -e "${bakblu}[MacOSX][Install][Start]${txtrst}\n";

. sh/osx/scripts/brew.sh;
. sh/osx/scripts/brew-cask.sh;
. sh/osx/scripts/git.sh;
. sh/osx/scripts/the_silver_searcher.sh;
. sh/osx/scripts/jq.sh;
. sh/osx/scripts/ruby.sh;
. sh/osx/scripts/ngrok.sh;
. sh/osx/scripts/docker.sh;
. sh/osx/scripts/virtualbox.sh;
. sh/osx/scripts/chrome.sh;
. sh/osx/scripts/teamviewer.sh;
. sh/osx/scripts/dash.sh;
. sh/osx/scripts/vlc.sh;
. sh/osx/scripts/sublimetext.sh;
. sh/osx/scripts/atom.sh;
. sh/osx/scripts/franz.sh;
. sh/osx/scripts/iterm2.sh;
. sh/osx/scripts/python-workspace.sh;


echo -e "\n${bakblu}[MacOSX][Install][Finish]${txtrst}";
