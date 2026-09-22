FROM mysql:8.0

COPY ./scripts/01_crear.sql /docker-entrypoint-initdb.d/
COPY ./scripts/02_tablas.sql /docker-entrypoint-initdb.d/
COPY ./scripts/03_datos.sql /docker-entrypoint-initdb.d/
COPY ./scripts/04_escenario1.sql /docker-entrypoint-initdb.d/
COPY ./scripts/05_escenario2.sql /docker-entrypoint-initdb.d/
COPY ./scripts/06_escenario3.sql /docker-entrypoint-initdb.d/

