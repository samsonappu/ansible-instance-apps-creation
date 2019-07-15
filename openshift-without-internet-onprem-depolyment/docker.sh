#!/bin/bash
service=docker

if (( $(ps -ef | grep -v grep | grep $service | wc -l) > 0 ))
then
echo "$service is running!!!"
else
systemctl start docker.service
fi
