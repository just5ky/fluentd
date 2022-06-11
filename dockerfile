
FROM fluentd:v1.14.0-debian-1.0
USER root

RUN apt-get update 
RUN apt-get install -y build-essential
RUN apt-get install -y libgeoip-dev
RUN apt-get install -y libmaxminddb-dev

RUN gem install fluent-plugin-elasticsearch --no-document
RUN gem install fluent-plugin-opensearch --no-document
RUN gem install fluent-plugin-beats --no-document
USER fluent