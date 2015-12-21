#!/bin/sh

echo -e "${bakcyn}[common][python] Start Install ${txtrst}";

. sh/common/python/scripts/pyenv.sh ;
. sh/common/python/pip/main.sh ;

echo -e "${bakcyn}[common][python] Finish Install ${txtrst}";