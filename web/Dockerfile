FROM alpine

ENV port=8080

COPY ./common/config/web/web /web
COPY ./common/config/web/start.sh /start.sh
COPY ./common/config/web/static /static
COPY ./common/config/web/env /env
COPY ./common/config/web/healthcheck.sh /usr/local/bin/healthcheck.sh

#HEALTHCHECK --interval=10s --timeout=10s --start-period=5s --retries=3 CMD [ "curl --fail http://web:8080/ || exit 1" ]


RUN chmod +x ./start.sh && chmod +x /usr/local/bin/healthcheck.sh && chmod +x ./web && apk add --no-cache curl

EXPOSE ${port}

ENTRYPOINT [ "./start.sh" ]
