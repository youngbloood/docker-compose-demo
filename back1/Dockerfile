FROM alpine
COPY back /back
RUN chmod +x back
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "curl --fail -s http://127.0.0.1:9090/api/ping || exit 1" ]
ENTRYPOINT [ "./back" ]