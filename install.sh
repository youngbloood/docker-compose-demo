#!/bin/bash +vx

if [ $# != 1 ] 
then 
    echo "请输入一个yml/yaml文件作为参数"
    exit 1
fi

# build back1
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./common/config/back1/back1 github.com/youngbloood/docker-compose-demo/back1

# build back2
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./common/config/back2/back2 github.com/youngbloood/docker-compose-demo/back2

# build web
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./common/config/web/web github.com/youngbloood/docker-compose-demo/web

# cp start.sh
cp ./web/start.sh ./common/config/web/

# cp env web
cp ./web/env ./common/config/web/

# cp nginx.conf and env
cp -rf ./nginx/ ./common/config/

# docker-compose down
docker-compose down

# remove docker images
docker rmi demo-web demo-back1 demo-back2  -f

# docker-compose up
docker-compose -f docker-compose.yml -f $1 up -d