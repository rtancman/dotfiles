#!/bin/sh

echo -e "${bakcyn}[Docker Compose] Start Install ${txtrst}";

pip install -U docker-compose ;
chmod +x /usr/local/bin/docker-compose ;

echo -e "${bakgrn}[Docker Compose] Finish Install ${txtrst}";

