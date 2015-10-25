#!/bin/sh

. sh/common/init.sh ;

echo -e "${bakgrn} dotfiles rtancman${txtrst}";
echo -e "\n${BGreen} Start...${txtrst}";

if [ "root" != "$USER" ]; then
	
	echo -e "${bakred} [Error] You must run with root! ${txtrst}";

else

	osrelease="$(cat /etc/*-release)"

	if [[ ${osrelease} =~ 'Fedora' ]]; then
	       . sh/fedora/main.sh;
	elif [[ ${osrelease} =~ 'Debian' ]]; then
	        echo "Debian ;)" ;
	else
	        echo "OS notfound :( send me message or contribute with my project" ;
	fi

fi

echo -e "${BGreen} Finish...${txtrst}";
echo -e "\n${bakblu} thx for coming and help me with our project in https://github.com/rtancman/dotfiles${txtrst}";

exit 1