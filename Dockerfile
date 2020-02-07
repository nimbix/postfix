ARG ALPINE_VERSION=3.11
FROM alpine:$ALPINE_VERSION

ARG POSTFIX_VERSION=3.4.9-r0
ENV POSTFIX_VERSION ${POSTFIX_VERSION}

RUN apk add --no-cache postfix=$POSTFIX_VERSION && \
	echo "inet_interfaces = all" >>/etc/postfix/main.cf && \
	echo "mynetworks = 0.0.0.0/0" >>/etc/postfix/main.cf

CMD postfix start-fg

