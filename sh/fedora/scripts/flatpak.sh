#!/bin/sh

echo -e "${bakcyn}[flatpak] Start Install ${txtrst}";

sudo -u $DOTFILE_DEFAULT_USER flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo -u $DOTFILE_DEFAULT_USER flatpak update --user
sudo -u $DOTFILE_DEFAULT_USER flatpak --user install -y --from https://linphone.org/flatpak/linphone.flatpakref
sudo -u $DOTFILE_DEFAULT_USER flatpak --user install -y flathub \
    com.slack.Slack \
    com.skype.Client \
    com.jetbrains.PyCharm-Community \
    com.jgraph.drawio.desktop \
    com.obsproject.Studio \
    com.getpostman.Postman \
    com.visualstudio.code \
    com.google.AndroidStudio \
    org.gnucash.GnuCash

echo -e "${bakgrn}[flatpak] Finish Install ${txtrst}";

