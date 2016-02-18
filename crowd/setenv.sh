#!/usr/bin/env bash
JAVA_OPTS="-Xms128m -Xmx512m -XX:MaxPermSize=256m -Dfile.encoding=UTF-8 $JAVA_OPTS"
JAVA_OPTS="$JAVA_OPTS -Dcrowd.home=$CROWD_HOME"

export JAVA_OPTS
