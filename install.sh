#!/bin/bash +vx

if [ $# != 1 ] 
then 
    echo "input a param with yaml/yml file"
    exit 1
fi

# build back1
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./common/config/back1/back1 github.com/youngbloood/docker-compose-demo/back1

# build back2
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./common/config/back2/back2 github.com/youngbloood/docker-compose-demo/back2

# build web
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./common/config/web/web github.com/youngbloood/docker-compose-demo/web

# back1
cp ./back1/healthcheck.sh ./common/config/back1/healthcheck.sh

# back2
cp ./back2/healthcheck.sh ./common/config/back2/healthcheck.sh

# web
# cp start.sh
cp ./web/start.sh ./common/config/web/

# cp env of web
cp ./web/env ./common/config/web/

# cp healthcheck.sh
cp ./web/healthcheck.sh ./common/config/web/healthcheck.sh

# cp healthcheck.sh
cp ./nginx/healthcheck.sh ./common/config/nginx/healthcheck.sh

#cp nginx.conf 
cp ./nginx/nginx.conf ./common/config/nginx/nginx.conf

# docker-compose down
docker-compose down

# remove docker images
docker rmi demo-web demo-back1 demo-back2 demo-nginx -f

# docker-compose up
docker-compose -f docker-compose.yml -f $1 up -d