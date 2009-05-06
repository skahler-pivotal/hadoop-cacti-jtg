#!/bin/sh
if [ -z "$CACTI_HOME" ] ; then
  echo "CACTI_HOME is not defined"
  exit 1
fi

JTG_CLASSPATH="${CACTI_HOME}/scripts/hadoop-cacti-jtg.jar"
JTG_CLASSNAME="com.jointhegrid.hadoopjmx.FSNamesystemStatus"

jmxURL=$1
user=$2
pass=$3
java -cp ${JTG_CLASSPATH} ${JTG_CLASSNAME} $jmxURL $user $pass