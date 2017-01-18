#!/bin/sh

. sh/common/params.sh ;

if [ $DOTFILE_OS == "OSX" ]; then

    . sh/common/collors-osx.sh ;

else

    . sh/common/collors.sh ;

fi