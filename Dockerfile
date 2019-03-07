FROM alpine:latest

RUN  apk add --update bash docker && rm -rf /var/cache/apk/*

ENV DELAY=3600

ADD startup.sh /startup.sh
RUN chmod 755 /startup.sh
ENTRYPOINT ["/startup.sh"]