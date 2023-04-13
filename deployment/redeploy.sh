#!/bin/sh
docker stop website
docker rm website
docker pull dmichael29/project4:latest
docker run -dp 80:80 --name website dmichael29/project4
