FROM openjdk:8-jre-alpine

ENV GERRIT_USER gerrit
ENV GERRIT_HOME /var/gerrit
ENV GERRI_SITE ${GERRIT_HOME}/gerrit_site
ENV GERRIT_WAR ${GERRIT_HOME}/gerrit.war
ENV GERRIT_VERSION 3.2.0
ENV GERRIT_INIT_ARGS ""

RUN adduser -D -h "${GERRIT_HOME}" -g "Gerrit User" -s /sbin/nologin "${GERRIT_USER}"
RUN set -x && apk add --update --no-cache git openssh-client openssl perl perl-cgi curl su-exec procmail jq

RUN mkdir /docker-entrypoint-init.d
RUN curl -fSsL https://gerrit-releases.storage.googleapis.com/gerrit-${GERRIT_VERSION}.war -o ${GERRIT_WAR}

COPY get-plugin.sh /

# RUN /get-plugin.sh events-log
# RUN /get-plugin.sh metrics-reporter-graphite
# RUN /get-plugin.sh metrics-reporter-prometheus
# RUN /get-plugin.sh lfs
# RUN /get-plugin.sh oauth
# RUN /get-plugin.sh readonly
# RUN /get-plugin.sh admin-console
# RUN /get-plugin.sh healthcheck

COPY gerrit-entrypoint.sh /
COPY gerrit-start.sh /

RUN su-exec ${GERRIT_USER} mkdir -p ${GERRI_SITE}
VOLUME ${GERRI_SITE}

ENTRYPOINT ["/gerrit-entrypoint.sh"]

EXPOSE 8080 29418

CMD ["/gerrit-start.sh"]
