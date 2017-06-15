FROM mysql:5.7

RUN /bin/sh -c 'if [ -x "$(command -v apt-get)" ]; then apt-get update && apt-get install -y python sudo bash; fi'

ENV MYSQL_DATABASE test
ENV MYSQL_USER test
ENV MYSQL_PASSWORD test
ENV MYSQL_ROOT_PASSWORD root
