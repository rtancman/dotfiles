#!/bin/bash
# Use > 1 to consume two arguments per pass in the loop (e.g. each
# argument has a corresponding value to go with it).
# Use > 0 to consume one or more arguments per pass in the loop (e.g.
# some arguments don't have a corresponding value to go with it such
# as in the --default example).
# note: if this is set to > 0 the /etc/hosts part is not recognized ( may be a bug )

DOTFILE_DEFAULT_USER="DOTFILESEMPTYUSER";
DOTFILE_PYTHON=1;
DOTFILE_PHP=1;

while [[ $# > 1 ]]
do
key="$1"

case $key in
    -u|--user)
    DOTFILE_DEFAULT_USER="$2"
    shift # past argument
    ;;
    -python|--python)
    DOTFILE_PYTHON=1;
    DOTFILE_PHP=0;
    shift # past argument
    ;;
    -php|--php)
    DOTFILE_PYTHON=0;
    DOTFILE_PHP=1;
    shift # past argument
    ;;
    *)
            # unknown option
    ;;
esac
shift # past argument or value
done

DOTFILE_HOME="/home/"
DOTFILE_OS=""

if [[ "$(uname -s)" == 'Darwin' ]]; then
    DOTFILE_HOME="/Users/"
    DOTFILE_OS="OSX"
fi