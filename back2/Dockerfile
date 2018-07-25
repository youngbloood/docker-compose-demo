FROM alpine
COPY ./common/config/back2/back2 /back2
COPY ./back2/healthcheck /usr/local/bin/healthcheck
#COPY back2 /back2
RUN chmod +x back2 && apk add --no-cache curl
HEALTHCHECK --interval=10s --timeout=10s --start-period=5s --retries=3 CMD healthcheck
ENTRYPOINT [ "./back2" ]