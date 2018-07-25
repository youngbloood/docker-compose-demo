FROM alpine
COPY ./common/config/back1/back1 /back1
COPY ./back1/healthcheck /usr/local/bin/healthcheck
RUN chmod +x back1 && apk add --no-cache curl
HEALTHCHECK --interval=10s --timeout=10s --start-period=5s --retries=3 CMD healthcheck
ENTRYPOINT [ "./back1" ]