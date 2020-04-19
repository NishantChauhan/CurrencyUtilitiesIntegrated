#!/usr/bin/env sh
apk add py-pip python-dev libffi-dev openssl-dev gcc libc-dev make busybox-suid
pip install docker-compose
docker-compose down
docker-compose up -d
