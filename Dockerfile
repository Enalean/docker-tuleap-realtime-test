FROM alpine:3.3

MAINTAINER "Juliana Leclaire" <juliana.leclaire@enalean.com>

RUN apk add --no-cache nodejs

RUN npm install -g grunt-cli

ENV NODE_ENV dev

VOLUME /nodeapp
WORKDIR /nodeapp

COPY run.sh /run.sh
ENTRYPOINT ["/run.sh"]