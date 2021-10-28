FROM alpine:edge

RUN apk add znc=1.8.2-r3 znc-extra=1.8.2-r3 ca-certificates && mkdir /znc && chown guest /znc
USER guest
ENV HOME /znc

ENTRYPOINT ["/usr/bin/znc", "-d/znc"]
CMD ["--foreground"]
