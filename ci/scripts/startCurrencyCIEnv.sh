#!/usr/bin/env sh

apk add py-pip python-dev libffi-dev openssl-dev gcc libc-dev make busybox-suid
pip install docker-compose
docker-compose down
docker-compose up -d

# docker stop currency-utilities-app-container currency-utilities-server-dev-container
# sleep 5
# docker run --rm --name currency-utilities-app-container -d -p 4000:80 nishantchouhan/currency-utilities-app
# docker run --rm -e "SPRING_PROFILES_ACTIVE=dev" --name currency-utilities-server-dev-container -d -p 5000:5000 nishantchouhan/currency-utilities-server
