#!/bin/sh
echo -e "${bakcyn}[webOS] Start Install ${txtrst}";

wget http://gfts.lge.com/fts/gftsFilePathDownload.lge?key=dlRF00003754&hash=ZBsJCFRIdx2O45zz&mtime=1435191219000
dnf install -y jdk-8u65-linux-x64.rpm ;
rm jdk-8u65-linux-x64.rpm ;

echo -e "${bakgrn}[webOS] Finish Install ${txtrst}";