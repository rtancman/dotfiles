#   yarn
#   ------------------------------------------
export PATH="$(yarn global bin):$PATH"


#   Android
#   ------------------------------------------
# Add Android in path
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK="$ANDROID_HOME"
#export PATH="$PATH:$ANDROID_SDK"
#export PATH="$PATH:$ANDROID_SDK/platform-tools"
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


#   kubernetes
#   ------------------------------------------
export PATH="$HOME/projects/k8s/jusbr-kube/scripts:$PATH"


# gradle
#   ------------------------------------------
export PATH=$PATH:~/.sdkman/candidates/gradle/current/bin/gradle


# spark
#   ------------------------------------------
export SPARK_HOME=~/apachespark/current
export PATH=$PATH:$SPARK_HOME:$SPARK_HOME/bin:$SPARK_HOME/sbin
export PYSPARK_PYTHON=python3


# kafka
#   ------------------------------------------
export KAFKA_CLI_HOME=~/kafka/current
export PATH=$PATH:$SPARK_HOME:$KAFKA_CLI_HOME/bin


# coursier
#   ------------------------------------------
export COURSIER_CLI_HOME="/Users/rtancman/Library/Application Support/Coursier/"
export PATH=$PATH:$COURSIER_CLI_HOME/bin


# google cloud sql proxy
#   ------------------------------------------
export GOOGLE_CLOUD_SQL_PROXY_HOME=/Users/rtancman/google-cloud-sql-proxy
export PATH=$PATH:$GOOGLE_CLOUD_SQL_PROXY_HOME/bin