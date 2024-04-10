FROM postgres:latest

ENV POSTGRES_USER myuser
ENV POSTGRES_PASSWORD mypassword
ENV POSTGRES_DB mydatabase

RUN apt-get update \
    && apt-get install -y \
    postgresql-contrib