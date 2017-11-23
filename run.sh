#!/bin/bash
set -x

sudo docker stop dc-jenkins

sudo docker rm dc-jenkins

sudo docker run -d --shm-size=1g  -i -t -p 8080:8080 -p 50000:50000 -h dc-jenkins  -v /data-ext/imit/docker/dc-jenkins/ -P --name="dc-jenkins" imit/jenkins 
