FROM alpine:latest
RUN apk update
RUN apk add gitea
#ADD https://www.gerczei.eu/files/tamas@gerczei.eu-5ec0fe1e.rsa.pub /etc/apk/keys/

# using a community package re-built locally via apkbuild with MySQL support
#RUN     apk add --repository https://www.gerczei.eu/packages/alpine/v3.15 --no-cache \
#                git-lfs=3.0.2-r0 \
#                openssh-keygen=8.8_p1-r1 \
#                bash=5.1.8-r0 \
#                gitea=1.15.9-r0 && \
#        mkdir /var/cache/gitea && \
#        chown gitea:www-data /var/cache/gitea
RUN apk add openrc
RUN openrc
RUN touch /run/openrc/softlevel
#EXPOSE 22 3000

#USER gitea:www-data
COPY ./sources/script.sh /
#ENTRYPOINT ["/bin/sh", "/script.sh"]

#ENTRYPOINT ["/usr/bin/gitea"]


CMD /bin/sh /script.sh
#RUN apk add gitea
#RUN apk add openrc
#RUN openrc
#RUN touch /run/openrc/softlevel
#COPY sources/script.sh /
#ENTRYPOINT ["/bin/sh", "/script.sh"]
