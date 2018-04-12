#!/bin/sh


SPOTIFY_IS_AVAILABLE="$(dnf list installed | grep spotify)"

if [[ ${SPOTIFY_IS_AVAILABLE} != '' ]]; then

    echo -e "${bakgrn}[installed][Spotify]${txtrst} already installed ;)" ;

else

  echo -e "${bakcyn}[Spotify] Start Install ${txtrst}";

  dnf config-manager --add-repo=http://negativo17.org/repos/fedora-spotify.repo
  dnf install -y spotify

  echo -e "${bakgrn}[Spotify] Finish Install ${txtrst}";

fi
