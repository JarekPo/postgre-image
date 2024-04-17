FROM postgres:alpine

COPY ./init.sql /docker-entrypoint-initdb.d/

COPY ./postgresql.conf /etc/postgresql.conf

EXPOSE 5432

ARG DATABASE_NAME
ARG DATABASE_USER
ARG DATABASE_PASSWORD

ENV DATABASE_NAME=${DATABASE_NAME}
ENV DATABASE_USER=${DATABASE_USER}
ENV DATABASE_PASSWORD=${DATABASE_PASSWORD}

CMD ["postgres", "-c", "config_file=/etc/postgresql.conf"]