FROM nginx

COPY ./nginx/healthcheck.sh /usr/local/bin/healthcheck.sh
COPY ./nginx /etc/nginx

RUN chomod +x /usr/local/bin/healthcheck.sh && apt update && apt install curl -y

