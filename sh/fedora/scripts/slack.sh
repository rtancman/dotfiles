#!/bin/sh

echo -e "${bakcyn}[Slack] Start Install ${txtrst}";

wget https://slack-ssb-updates.global.ssl.fastly.net/linux_releases/slack-1.2.5-0.1.fc21.x86_64.rpm ;
dnf install -y slack-1.2.5-0.1.fc21.x86_64.rpm ;
rm -rf slack-1.2.5-0.1.fc21.x86_64.rpm ;

echo -e "${bakgrn}[Slack] Finish Install ${txtrst}";

