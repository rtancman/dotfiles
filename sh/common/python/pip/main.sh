#!/bin/sh

echo -e "${bakcyn}[common][pip] Start Install ${txtrst}";

. sh/common/python/pip/scripts/docker-compose.sh ;
. sh/common/python/pip/scripts/mps-youtube.sh ;
. sh/common/python/pip/scripts/ipython.sh ;

echo -e "${bakcyn}[common][pip] Finish Install ${txtrst}";