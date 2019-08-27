#!/bin/sh

echo -e "${bakblu}[Fedora][Install][Start]${txtrst}\n";

echo -e "${bakblu}[Fedora]${txtrst} run update";

#dnf update -y;

echo -e "${bakblu}[Fedora]${txtrst} finish update\n";

. sh/fedora/scripts/tools.sh;
. sh/fedora/scripts/git.sh;
. sh/fedora/scripts/svn.sh;
. sh/fedora/scripts/mercurial.sh;
. sh/fedora/scripts/sqlite.sh;
. sh/fedora/scripts/vim.sh;
. sh/fedora/scripts/gvim.sh;
. sh/fedora/scripts/ruby.sh;
. sh/fedora/scripts/tmux.sh;
. sh/fedora/scripts/jq.sh;
. sh/fedora/scripts/chrome.sh;
#. sh/fedora/scripts/virtualbox.sh;
. sh/fedora/scripts/pythondevel.sh;
. sh/fedora/scripts/pip.sh;
. sh/fedora/scripts/docker.sh;
. sh/common/docker/main.sh;
. sh/fedora/scripts/java.sh;
. sh/common/heroku/main.sh;
. sh/fedora/scripts/teamviewer.sh;
. sh/fedora/scripts/zeal.sh;
. sh/fedora/scripts/php.sh;
. sh/fedora/scripts/filezilla.sh;
. sh/common/vim-bootstrap/main.sh;
. sh/common/ngrok/main.sh;
. sh/fedora/scripts/sublimetext3.sh;
. sh/fedora/scripts/atom.sh;
. sh/fedora/scripts/git-flow.sh;
. sh/common/git-flow-completion/main.sh;
# . sh/common/meetfranz/main.sh;
. sh/fedora/scripts/meetfranz.sh;
. sh/fedora/scripts/nodejs.sh;
# . sh/fedora/scripts/phpstorm.sh;
# . sh/fedora/scripts/pycharm.sh;
. sh/fedora/scripts/postgresqlcontrib.sh;
. sh/fedora/scripts/pgadmin.sh;
. sh/fedora/scripts/mysql.sh;
. sh/common/python/main.sh;
. sh/fedora/scripts/apex.sh;
. sh/fedora/scripts/nvm.sh;
. sh/fedora/scripts/gvm.sh;
. sh/fedora/scripts/direnv.sh;
#. sh/common/ruby/scripts/rvm.sh;
. sh/fedora/scripts/flatpak.sh;
. sh/fedora/scripts/mongodb.sh;
. sh/fedora/scripts/robomongo.sh;
. sh/fedora/scripts/redis.sh;
. sh/fedora/scripts/vscode.sh;
. sh/fedora/scripts/yarn.sh;
. sh/fedora/scripts/acceleration_android_emulator.sh;
#. sh/fedora/scripts/peek.sh;
. sh/fedora/scripts/kubectl.sh;
. sh/fedora/scripts/tmate.sh;
. sh/fedora/scripts/wrk.sh;

echo -e "\n${bakblu}[Fedora][Install][Finish]${txtrst}";
