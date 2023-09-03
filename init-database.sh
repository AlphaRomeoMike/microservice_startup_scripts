#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE microservice_auth;
    GRANT ALL PRIVILEGES ON DATABASE microservice_auth TO postgres;
EOSQL