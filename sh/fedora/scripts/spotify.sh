#!/bin/sh

echo -e "${bakcyn}[Spotify] Start Install ${txtrst}";

# install by post https://community.spotify.com/t5/Help-Desktop-Linux-Windows-Web/Linux-Fedora-RPM-package-for-F17-F19/m-p/237688#M8446
dnf remove -y rpmdevtools rpm-build yum-utils ;
rpmdev-setuptree ;
wget http://leamas.fedorapeople.org/spotify/latest/spotify-client.spec ;
spectool -g spotify-client.spec ;
dnf-builddep spotify-client.spec ;
env QA_RPATHS=$((0x10|0x08)) rpmbuild -bb spotify-client.spec ;

echo -e "${bakgrn}[Spotify] Finish Install ${txtrst}";

