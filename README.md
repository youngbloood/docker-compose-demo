# docker-compose-demo

## Prepare

#### 1.install [go](http://www.golang.org/)
#### 2.install [docker ce](https://docs.docker.com/install/)
#### 3.install [docker-compose](https://docs.docker.com/compose/overview/)
## Usages
#### 1.add the line to your host file
```
127.0.0.1 your.domain.com
```
#### 2.edit ./nginx/env
```
replace the `server_name` with value in step 1
```
#### 3.run the command

**development**
```
./install.sh  docker-compose.dev.yml
```
**production**
```
./install.sh  docker-compose.pro.yml
```
#### 4.visit [your.domain.com](your.domain.com) with your browser