#!/bin/sh

. sh/common/init.sh ;

echo -e "\n\n\n\n";
echo -e "          888          888     .d888 d8b 888";
echo -e "          888          888    d88P   Y8P 888";
echo -e "          888          888    888        888";
echo -e "      .d88888  .d88b.  888888 888888 888 888  .d88b.  .d8888b";
echo -e "     d88  888 d88  88b 888    888    888 888 d8P  Y8b 88K";
echo -e "     888  888 888  888 888    888    888 888 88888888 Y8888b.";
echo -e "     Y88b 888 Y88..88P Y88b.  888    888 888 Y8b.          X88";
echo -e "       Y88888   Y88P     Y888 888    888 888   Y8888   88888P'";
echo -e "                                                             ${bakblu}rtancman${txtrst}";
echo -e "\n${BGreen} Start...${txtrst}\n";

if [ $DOTFILE_OS == "OSX" ]; then

    . sh/osx/main.sh;

elif [ $UID != 0 ]; then

    echo -e "${bakred} [Error] You must run with root! ${txtrst}";

elif [[ "DOTFILESEMPTYUSER" == "$DOTFILE_DEFAULT_USER" || "YOUR_USER_HERE" == "$DOTFILE_DEFAULT_USER" ]]; then

    echo -e "${bakred} [Error] You must put your local USER! \n\n bash main.sh -u YOUR_USER_HERE ${txtrst}";

elif [ ! -e "/$DOTFILE_HOME/$DOTFILE_DEFAULT_USER" ]; then

    echo -e "${bakred} [Error] Your local USER do not exists! ${txtrst}";

else

    osrelease="$(cat /etc/*-release)"

    if [[ ${osrelease} =~ 'Fedora' ]]; then
        . sh/fedora/main.sh;
    elif [[ ${osrelease} =~ 'Debian' ]]; then
        . sh/debian/main.sh;
    elif [[ ${osrelease} =~ 'LinuxMint' || ${osrelease} =~ 'Ubuntu' ]]; then
        . sh/ubuntu/main.sh;
    else
        echo "OS notfound :( send me message or contribute with my project" ;
    fi

fi

echo -e "\n${BGreen} ...Finish${txtrst}";
echo -e "\n${bakblu} thx for coming and help me with our project in https://github.com/rtancman/dotfiles${txtrst}";

exit 1
