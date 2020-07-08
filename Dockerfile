FROM alpine:3.12

RUN apk add znc=1.8.1-r0 znc-extra=1.8.1-r0 ca-certificates && mkdir /znc && chown guest /znc
USER guest
ENV HOME /znc

ENTRYPOINT ["/usr/bin/znc", "-d/znc"]
CMD ["--foreground"]
