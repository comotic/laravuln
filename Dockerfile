FROM debian:12 as binaries

RUN apt update
RUN apt install -yq mariadb-client

FROM bitnami/laravel
COPY --from=binaries /usr/bin/mysqldump /usr/bin/mysqldump
