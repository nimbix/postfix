ARG IMG_FROM=alpine:3.11
FROM $IMG_FROM

RUN apk add --no-cache postfix && \
	echo "inet_interfaces = all" >>/etc/postfix/main.cf && \
	echo "mynetworks = 0.0.0.0/0" >>/etc/postfix/main.cf

CMD postfix start-fg

