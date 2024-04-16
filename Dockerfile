FROM postgres:alpine

COPY ./init.sql /docker-entrypoint-initdb.d/

COPY ./postgresql.conf /etc/postgresql.conf

EXPOSE 5432

CMD ["postgres", "-c", "config_file=/etc/postgresql.conf"]