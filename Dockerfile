FROM library/postgres:latest

ENV POSTGRES_USER mercato_integration_user
ENV POSTGRES_DB mercato_integration_db

EXPOSE 5432

RUN mkdir -p /backup/
COPY ./backup.bak /backup/