# build back1
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./common/config/back1/back1 github.com/youngbloood/docker-compose-demo/back1

# build back2
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./common/config/back2/back2 github.com/youngbloood/docker-compose-demo/back2

# build web
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o ./common/config/web/web github.com/youngbloood/docker-compose-demo/web

# cp start.sh
cp ./web/start.sh ./common/config/web/

# docker-compose up
docker-compose -f docker-compose.yml -f docker-compose.dev.yml up -d