#!/usr/bin/bash
cd "/home/"
java_app="java"
java_app_pid=`ps -e | grep "$java_app" | awk '{print $1}'`
echo $java_app
echo $java_app_pid
kill -9 "$java_app_pid"
DATE = date +"%Y-%m-%d"
name=$(date '+%Y-%m-%d')
tar -zcvf "$name.tar.gz" minecraft-patrick
cd "/home/minecraft-patrick"
nohup "/usr/bin/java -Xmx8192M -Xms8192M -jar /home/minecraft-patrick/server.jar nogui"
