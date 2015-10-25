#!/bin/sh

echo -e "${bakcyn}[Pip python] Start Install ${txtrst}";

wget https://bootstrap.pypa.io/get-pip.py ;
python get-pip.py ;
rm -rf get-pip.py ;

echo -e "${bakgrn}[Pip python] Finish Install ${txtrst}";

