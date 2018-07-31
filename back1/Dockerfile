FROM alpine
COPY ./common/config/back1/back1 /back1
COPY ./common/config/back1/healthcheck.sh /usr/local/bin/healthcheck.sh
RUN chmod +x back1 && chmod +x /usr/local/bin/healthcheck.sh && apk add --no-cache curl
#HEALTHCHECK --interval=30s --timeout=10s --start-period=15s --retries=3 CMD sh /usr/local/bin/healthcheck.sh
ENTRYPOINT [ "./back1" ]