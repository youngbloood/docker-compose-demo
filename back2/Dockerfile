FROM alpine
COPY ./common/cofig/back2/back2 /back2
RUN chmod +x back2 && apk add --no-cache curl
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "curl --fail -s http://back2:9090/api/ping || exit 1" ]
ENTRYPOINT [ "./back2" ]