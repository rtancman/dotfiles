#!/bin/sh
echo -e "${bakcyn}[webOS] Start Install ${txtrst}";

wget "http://gfts.lge.com/fts/gftsFilePathDownload.lge?key=dlRF00003754&hash=$(date +%s | md5sum | cut -c1-16)&mtime=$(date +%s)000"
unzip Installer_linux64.zip -d Installer_linux64
rm Installer_linux64.zip ;

wget "http://gfts.lge.com/fts/gftsFilePathDownload.lge?key=dlRF00003755&hash=$(date +%s | md5sum | cut -c1-16)&mtime=$(date +%s)000"
unzip webOS_SDK_linux64.zip -d webOS_SDK_linux64
rm webOS_SDK_linux64.zip ;

whiptail --msgbox "[webOS] Run App... I need your time ;)" 10 100 && \ 
./Installer_linux64/Install.sh ;

echo -e "${bakgrn}[webOS] Finish Install ${txtrst}";