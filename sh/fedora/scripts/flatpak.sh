#!/bin/sh

echo -e "${bakcyn}[flatpak] Start Install ${txtrst}";

flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

sudo -u $DOTFILE_DEFAULT_USER flatpak install -y flathub com.slack.Slack
sudo -u $DOTFILE_DEFAULT_USER flatpak --user install -y --from https://linphone.org/flatpak/linphone.flatpakref
flatpak install -y flathub com.skype.Client
flatpak install -y flathub com.jetbrains.PyCharm-Community
flatpak install -y flathub com.jgraph.drawio.desktop
flatpak install -y flathub com.obsproject.Studio
flatpak install -y flathub com.getpostman.Postman

echo -e "${bakgrn}[flatpak] Finish Install ${txtrst}";

