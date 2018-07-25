FROM alpine

ENV port=8080

COPY ./common/config/web/web /web
COPY ./web/start.sh /start.sh
COPY ./web/static /static
COPY ./web/env /env
COPY ./web/healthcheck.sh /usr/local/bin/healthcheck

#HEALTHCHECK --interval=10s --timeout=10s --start-period=5s --retries=3 CMD [ "curl --fail http://web:8080/ || exit 1" ]


RUN chmod +x ./start.sh && chmod +x /usr/local/bin/healthcheck.sh && chmod +x ./web

EXPOSE ${port}

ENTRYPOINT [ "./start.sh" ]
