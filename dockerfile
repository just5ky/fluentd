
FROM fluent/fluentd:latest
USER root

RUN apk update && apk add build-essential libgeoip-dev libmaxminddb-dev

RUN gem install fluent-plugin-elasticsearch --no-document
RUN gem install fluent-plugin-opensearch --no-document
RUN gem install fluent-plugin-beats --no-document
USER fluent