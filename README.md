# docker-compose-demo

## Prepare

#### 1.install [go](https://golang.org/)
#### 2.install [docker ce](https://docs.docker.com/install/)
#### 3.install [docker-compose](https://docs.docker.com/compose/overview/)
## Usages
#### 1.add the next line to your [host file](https://www.howtogeek.com/howto/27350/beginner-geek-how-to-edit-your-hosts-file/)
```
127.0.0.1 your.domain.com
```
#### 2.edit [./nginx/nginx.conf](https://github.com/youngbloood/docker-compose-demo/blob/master/nginx/nginx.conf)
```
replace the `server_name` with the value in step 1
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