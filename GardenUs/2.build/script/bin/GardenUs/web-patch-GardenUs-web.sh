#!/bin/bash

# 1. 웹서버 shutdown
/usr/local/tomcat/apache-tomcat-8.5.50/bin/shutdown.sh
sleep 3
# ps -elf | grep tomcat-fc-web | grep java | grep -v grep | awk '{print $4}' | xargs kill -9

# 2. 웹서버 patch
/home/www/bin/GardenUs/ant-GardenUs-web.sh

# 4. 웹서버 restart
sleep 5
BUILD_ID=dontKillMe /usr/local/tomcat/apache-tomcat-8.5.50/bin/startup.sh

# tomcat check
#tail -f /usr/local/tomcat/apache-tomcat-8.5.50/logs/catalina.out
