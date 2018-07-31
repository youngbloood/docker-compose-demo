FROM alpine
COPY ./common/config/back2/back2 /back2
COPY ./common/config/back2/healthcheck.sh /usr/local/bin/healthcheck.sh
#COPY back2 /back2
RUN chmod +x back2 && chmod +x /usr/local/bin/healthcheck.sh && apk add --no-cache curl
#HEALTHCHECK --interval=30s --timeout=10s --start-period=15s --retries=3 CMD sh /usr/local/bin/healthcheck.sh
ENTRYPOINT [ "./back2" ]