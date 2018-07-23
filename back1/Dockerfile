FROM alpine
COPY ./common/cofig/back1/back1 /back1
RUN chmod +x back1 && apk add --no-cache curl
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "curl --fail -s http://back1:9090/api/ping || exit 1" ]
ENTRYPOINT [ "./back1" ]