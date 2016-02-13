# Conceptos Básicos de Base de Datos
## Dato
Mínima unidad de Información
Es un valor (numérico, alfabético, algorítmico, espacial, etc)  que por sí sólo no dice mucho

## Información
Conjunto organizado de datos procesados, que constituyen un mensaje que cambia el estado de conocimiento del sujeto o sistema que recibe dicho mensaje

## Base de Datos
Son bancos de información que contienen datos relativos a diversas temáticas y categorizados de distinta manera, pero que comparten entre sí algún tipo de vínculo o relación que busca ordenarlos y clasificarlos en conjunto

##Lógica de Negocio
Es la parte de un sistema que se encarga de codificar las reglas de funcionamiento del mundo real que determinan como la información puede ser creada, mostrada, cambiada y eliminada. 
Son rutinas que realizan entradas de datos, consultas a los datos, generación de informes y más específicamente todo el procesamiento que se realiza detrás de la aplicación visible para el usuario (Backend)


#Sistemas Gestores de Bases de Datos (SGBD):
##Ejemplos
* La agenda de la Abuela
* Excel
* Access
* SQL Lite
* MySQL
* MariaDB
* Oracle
* MS SQL Server
* PostgreSQL
* Informix
* MongoDB
* RethinkDB
* Redis
* Cassandra
* Neo4j
* GraphDB

## Tipos 
* SQL (Structured Query Languaje)
	* Transaccionales: Access, MySQL, MariaDB, Oracle, MS SQL Server, PostgreSQL, Informix
* NoSQL (Not only SQL)
	* Documentales (BSON): MongoDB, RethinkDB
	* Clave-Valor: Redis, Cassandra
	* De Grafos: Neo4j, GraphDB

# Conceptos de BDs SQL
* Una BD tiene Tablas
* Una Tabla tiene Campos(columnas) y Registros(filas)
	* El conjunto de campos genera un Registro
	* Campo - un dato que no dice mucho
	* Registro - conjunto de campos que genera información

# Herramientas de Gestión MySQL
## Terminal de comandos
* cd c:/xampp/mysql/bin
* mysql -u root -p
* SHOW DATABASES;
* USE nombre_bd;
* SHOW TABLES;
* DESCRIBE nombre_tabla
* SHOW COLUMNS FROM nombre_tabla
* SELECT campos_tabla FROM nombre_tabla;
* SELECT * FROM nombre_tabla;

## WebApp
* [phpMyAdmin](https://www.phpmyadmin.net/) teniendo [XAMPP](http://localhost/phpmyadmin)

## Software
* [MySQL WorkBench](https://www.mysql.com/products/workbench/) (libre)
* [Navicat](http://www.navicat.com/es) (pago)

## Documentación MySQL
* [Documentación Oficial de MySQL](http://dev.mysql.com/doc/)
* [MySQL con Clase](http://mysql.conclase.net/curso/index.php)

# Modelo Entidad-Relación
Es un diagrama que permite representar las entidades relevantes de un sistema de información así como sus interrelaciones y propiedades

Formalmente, los diagramas ER son un lenguaje gráfico para describir conceptos. Informalmente, son simples dibujos o gráficos que describen información que trata un sistema de información y el software que lo automatiza

Elementos del Modelo Entidad-Relación
	* **Entidades**
		Son objetos distinguible del resto; pe en un sistema bancario, las personas y las cuentas son entidades. Éstas pueden ser entes concretos, como una persona o un avión, o abstractas, como un préstamo o una reserva. Se representan por medio de un rectángulo

	* **Atributos**
		Con propiedades de las entidades. Se representan mediante un círculo o elipse, cuando un atributo es identificativo de la entidad se subraya

	* **Relación**
		Describe la dependencia entre entidades o permite la asociación de las mismas; pe tenemos 2 entidades CLIENTE y HABITACIÓN, una relación sería que el cliente 'Pepito' tiene 'ocupada' la habitación '519'. Se representan por medio de un verbo de acción dentro de un rombo que une entidades

## Tipos de Relaciones:
	* **1 a 1**
		Un esposo(e) está casado(r) con una única esposa(e) y viceversa
	* **1 a M**
		Una factura(e) se emite (r) a una persona(e) y sólo a una, pero una persona(e) puede tener(r) varias facturas(e) emitidas a su nombre. Todas las facturas(e) se emiten(r) a nombre de alguien(e)
	* **M a M**
		Un cliente(e) puede comprar(r) varios productos(e) y un producto(e) puede ser comprado(r) por varios clientes(e)

## Herramientas para modelar:
* Cuaderno y Lápiz
* Microsoft Visio
* Cualquier Software de Diseño
* [Gliffy](https://www.gliffy.com/)
* [Lucidchart](https://www.lucidchart.com/)
* [Cacoo](https://cacoo.com/)