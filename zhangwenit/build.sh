#!/bin/bash
echo "jenkins build run" >> build.test
cp /home/jenkins_home/workspace/zhangwenit/target/*.jar app.jar
docker stop zhangwenit
docker rm zhangwenit
docker rmi zhangwenit:v1
docker build -t zhangwenit:v1 .
docker run --name zhangwenit --network testnet --network-alias zhangwenit -d -p 17070:8081  -v /home/logs/zhangwenit/:/logs zhangwenit:v1
