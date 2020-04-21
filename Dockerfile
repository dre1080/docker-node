FROM node:latest
LABEL maintainer="ando <lifeandcoding@gmail.com>"

ENV HOST 0.0.0.0

WORKDIR /src

RUN set -ex; \
  apt-get update; \
  apt-get install -y --no-install-recommends netcat; \
	apt-get clean; \
	rm -rf /var/lib/apt/lists/*

ADD https://raw.githubusercontent.com/eficode/wait-for/master/wait-for /usr/local/bin/
RUN chmod +x /usr/local/bin/wait-for

RUN yarn global add lerna

