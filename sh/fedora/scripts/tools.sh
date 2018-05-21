#!/bin/sh

echo -e "${bakcyn}[Tools] Start Install ${txtrst}";

dnf install -y zlib-devel bzip2 bzip2-devel readline-devel openssl-devel xz xz-devel bison bison-devel glibc-devel binutils gcc autoconf automake gcc-c++ libffi-devel libtool sqlite-devel libyaml-devel

echo -e "${bakgrn}[Tools] Finish Install ${txtrst}";
