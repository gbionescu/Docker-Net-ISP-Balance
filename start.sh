#!/bin/bash
docker stop netisp 2>/dev/null || true
docker rm netisp 2>/dev/null  || true
docker run -itd --rm --privileged --net=host --name=netisp netisp
