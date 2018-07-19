FROM alpine

#ENV port=8080
#COPY /static /web/static
COPY web /web
COPY start.sh /start.sh

#HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "curl --fail -s http://sb.gaoxk.me/ || exit 1" ]


RUN chmod +x ./start.sh && chmod +x ./web

EXPOSE ${port}

ENTRYPOINT [ "./start.sh" ]
