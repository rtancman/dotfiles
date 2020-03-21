#!/bin/sh

# https://medium.com/luckspark/installing-spark-2-3-0-on-macos-high-sierra-276a127b8b85
SPARK_IS_AVAILABLE="$(spark-shell --version 2>&1 >/dev/null)"

if [[ ${SPARK_IS_AVAILABLE} == '' ]]; then

    echo -e "${bakgrn}[installed][apache spark]${txtrst}" ;

else

    echo -e "${bakcyn}[apache spark] Start Install ${txtrst}";

    mkdir -p $HOME/apachespark
    wget https://downloads.apache.org/spark/spark-2.4.5/spark-2.4.5-bin-hadoop2.7.tgz
    tar xfv spark-2.4.5-bin-hadoop2.7.tgz -C $HOME/apachespark/
    rm spark-2.4.5-bin-hadoop2.7.tgz

    export SPARK_HOME=~/apachespark/spark-2.4.5-bin-hadoop2.7
    export PATH=$PATH:$SPARK_HOME:$SPARK_HOME/bin:$SPARK_HOME/sbin
    export PYSPARK_PYTHON=python3

    echo -e "${bakgrn}[apache spark] Finish Install ${txtrst}";

fi
