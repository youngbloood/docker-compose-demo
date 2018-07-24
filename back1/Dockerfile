FROM alpine
COPY ./common/config/back1/back1 /back1
RUN chmod +x back1 && apk add --no-cache curl
HEALTHCHECK --interval=10s --timeout=10s --start-period=5s --retries=3 CMD [ "curl --fail http://localhost:9090/api/ping || exit 1" ]
ENTRYPOINT [ "./back1" ]