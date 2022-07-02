# FluentD
[fluentd](https://github.com/fluent/fluentd) docker container with [docker](https://github.com/edsiper/fluent-plugin-docker) & [geoip filter](https://github.com/y-ken/fluent-plugin-geoip), [beats input](https://github.com/repeatedly/fluent-plugin-beats) & [opensearch output plugin](https://github.com/fluent/fluent-plugin-opensearch) <br>

<div align="center">

![](https://avatars.githubusercontent.com/u/859518?s=200)

![GitHub repo size](https://img.shields.io/github/repo-size/just5ky/fluentd?label=Repo%20Size&logo=github)
![Docker Build](https://github.com/just5ky/fluentd/workflows/Docker/badge.svg) 
![Docker Pulls](https://img.shields.io/docker/pulls/justsky/fluentd)
![Docker Size](https://img.shields.io/docker/image-size/justsky/fluentd)

</div>

#### Docker Run
`docker run --rm --name fluentd -v ./fluentd/conf:/fluentd/etc -p 24224:24224 -p 24224:24224/udp justsky/fluentd`

#### Docker compose
```yml
version: "3"
services:
    fluentd
        name: fluentd
        restart: unless-stopped
        image: justsky/fluentd
        ports:
            - "24224:24224"
            - "24224:24224/udp"
            - "9292:9292"          # Web UI
        volumes:
            - ./fluentd/conf:/fluentd/etc
```
