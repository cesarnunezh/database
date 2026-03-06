FROM postgres:16 AS database
COPY schema /docker-entrypoint-initdb.d/
