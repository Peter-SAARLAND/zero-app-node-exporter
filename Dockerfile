<<<<<<< HEAD
#FROM prom/node-exporter:v0.16.0
FROM prom/node-exporter:master

LABEL maintainer="Fabian Peter <fabian@peter.saarland>"

ENV NODE_ID=none

USER root

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x /docker-entrypoint.sh

ENTRYPOINT  [ "/docker-entrypoint.sh" ]
CMD [ "--path.sysfs=/host/sys", "--path.procfs=/host/proc", "--collector.textfile.directory=/etc/node-exporter/", "--collector.filesystem.ignored-mount-points=^/(sys|proc|dev|host|etc)($$|/)", "--no-collector.ipvs"]

ARG BUILD_DATE
LABEL org.label-schema.build-date=$BUILD_DATE
=======
FROM scratch
>>>>>>> 69d497d95da2a25d8cad7ce0fe396f7906a0c53e
