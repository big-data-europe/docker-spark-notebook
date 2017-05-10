#!/bin/sh

#git clone https://github.com/SANSA-Stack/SANSA-Examples /opt/sansa-examples
#cd /opt/sansa-examples && mvn clean install

/opt/spark-notebook/bin/spark-notebook -Dconfig.file=/opt/spark-notebook/conf/application.conf
