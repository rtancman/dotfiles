#!/bin/sh

. sh/common/init.sh ;

echo -e "${bakgrn} dotfiles rtancman${txtrst}";
echo -e "\n${BGreen} Start...";
echo -e "${txtrst}" ;

if [ "root" != "$USER" ]; then
        echo "You must run with root"
	exit 1
fi

osrelease="$(cat /etc/*-release)"

if [[ ${osrelease} =~ 'Fedora' ]]; then
       . sh/fedora/main.sh;
elif [[ ${osrelease} =~ 'Debian' ]]; then
        echo "Debian ;)" ;
else
        echo "OS notfound :( send me message or contribute with my project" ;
fi

exit 1