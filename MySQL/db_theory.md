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