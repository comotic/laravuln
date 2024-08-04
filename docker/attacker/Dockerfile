FROM debian:12

RUN apt update
RUN apt install -yq curl mariadb-client

WORKDIR /app
ADD . .
CMD /app/attack.sh
