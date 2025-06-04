#!/usr/bin/env sh

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

APP_NAME="Gradle"
APP_BASE_NAME=$(basename "$0")

# Resolve links - $0 may be a link
PRG="$0"

while [ -h "$PRG" ]; do
  ls=$(ls -ld "$PRG")
  link=$(expr "$ls" : '.*-> \(.*\)$')
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG=$(dirname "$PRG")/"$link"
  fi
done

# Get standard environment variables
PRG_DIR=$(dirname "$PRG")

# Setup Gradle home
GRADLE_HOME=$PRG_DIR/gradle

# Start Gradle
exec "$JAVA_HOME/bin/java" $DEFAULT_JVM_OPTS -classpath "$GRADLE_HOME/wrapper/gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain "$@"
