FROM fluentd:v1.14.0-debian-1.0

USER root

# install dependencies
RUN apt-get update 
RUN apt-get install -y build-essential libgeoip-dev libmaxminddb-dev

# install plugins
RUN gem install fluent-plugin-elasticsearch --no-document
RUN gem install fluent-plugin-opensearch --no-document
RUN gem install fluent-plugin-beats --no-document

# cleanup
RUN apt autoclean -y \
rm -rf /var/cache/apt/* 

USER fluent