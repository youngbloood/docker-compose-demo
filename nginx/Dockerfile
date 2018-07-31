FROM nginx

COPY ./nginx/healthcheck.sh /usr/local/bin/healthcheck.sh
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

RUN chmod +x /usr/local/bin/healthcheck.sh && apt update && apt install curl -y

