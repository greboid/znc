FROM alpine:3.11

RUN apk add znc znc-extra ca-certificates && mkdir /znc && chown guest /znc
USER guest
ENV HOME /znc

ENTRYPOINT ["/usr/bin/znc", "-d/znc"]
CMD ["--foreground"]
