#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE DATABASE robocop_db;
    \c robocop_db;
EOSQL

pg_restore -d robocop_db /database.backup
