FROM mysql:8.0

ENV MYSQL_ROOT_PASSWORD=root

VOLUME ["/var/lib/mysql"]

COPY 01_crear_db.sql /docker-entrypoint-initdb.d/01_crear_db.sql
COPY 02_crear_tablas.sql /docker-entrypoint-initdb.d/02_crear_tablas.sql
COPY 03_crear_relaciones.sql /docker-entrypoint-initdb.d/03_crear_relaciones.sql
COPY 04_insertar_datos.sql /docker-entrypoint-initdb.d/04_insertar_datos.sql
EXPOSE 3306 
