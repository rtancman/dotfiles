#!/bin/sh

echo -e "${bakcyn}[Tools] Start Install ${txtrst}";

dnf install -y zlib-devel bzip2 bzip2-devel readline-devel openssl-devel xz xz-devel

echo -e "${bakgrn}[Tools] Finish Install ${txtrst}";
