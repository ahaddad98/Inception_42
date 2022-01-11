FROM alpine:latest
RUN apk update
RUN apk add mariadb mariadb-common mariadb-client
RUN apk add openrc
RUN openrc
RUN touch /run/openrc/softlevel
COPY sources/script.sh /
COPY sources/wordpress.sql /
ENTRYPOINT ["/bin/sh", "/script.sh"]
