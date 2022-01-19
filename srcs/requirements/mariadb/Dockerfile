FROM alpine:latest
RUN apk update
RUN apk add mariadb mariadb-common mariadb-client
RUN apk add openrc
RUN openrc
RUN touch /run/openrc/softlevel
COPY ./tools/script.sh /
COPY ./conf/wordpress.sql /
ENTRYPOINT ["/bin/sh", "/script.sh"]
