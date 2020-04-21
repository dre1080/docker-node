FROM node:alpine
LABEL maintainer="ando <lifeandcoding@gmail.com>"

ENV HOST 0.0.0.0

WORKDIR /src

RUN apk add --update netcat-openbsd; \
	rm -rf /var/cache/apk/*

ADD https://raw.githubusercontent.com/eficode/wait-for/master/wait-for /usr/local/bin/
RUN chmod +x /usr/local/bin/wait-for

RUN yarn global add lerna

