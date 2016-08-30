FROM alpine:3.4

MAINTAINER "Juliana Leclaire" <juliana.leclaire@enalean.com>

RUN apk add --no-cache nodejs

ENV NODE_ENV dev

VOLUME /nodeapp
WORKDIR /nodeapp

COPY run.sh /run.sh
ENTRYPOINT ["/run.sh"]
