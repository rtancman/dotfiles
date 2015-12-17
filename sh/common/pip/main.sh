#!/bin/sh

echo -e "${bakcyn}[common][pip] Start Install ${txtrst}";

. sh/common/pip/scripts/docker-compose.sh ;
. sh/common/pip/scripts/mps-youtube.sh ;

echo -e "${bakcyn}[common][pip] Finish Install ${txtrst}";