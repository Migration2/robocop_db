FROM postgres:15

ENV POSTGRES_PASSWORD="1111"

COPY database.backup database.backup

COPY init.sh /docker-entrypoint-initdb.d/
