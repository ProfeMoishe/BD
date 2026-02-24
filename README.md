# Examen de Base de Datos - Consultas SQL

Este repositorio contiene la resolución del examen práctico de SQL. El caso de estudio es un sistema de gestión de biblioteca que incluye libros, autores, socios, préstamos, temas y localidades.

## Modelo de Datos
El sistema se basa en las siguientes entidades:
* **LIBROS**: Información técnica y comercial de los libros.
* **PRESTAMOS**: Registro de transacciones entre socios y libros.
* **SOCIOS**: Datos personales de los usuarios de la biblioteca.
* **AUTORES**: Datos de los escritores, vinculados a una localidad.
* **LOCALIDADES**: Ubicación geográfica (País, Provincia, Localidad).
* **TEMAS**: Categorización de los libros.

## Consultas Resueltas

### Consulta 1: Reporte de Préstamos Mensuales
Filtra los préstamos realizados en enero de 2025, integrando datos del libro, el tema y la información de contacto del socio responsable.

### Consulta 2: Búsqueda Geográfica de Autores
Muestra la información completa de los libros cuyos autores residen específicamente en la ciudad de Córdoba, Argentina.

## Requisitos
* Motor de base de datos compatible con SQL estándar (MySQL, PostgreSQL, SQL Server).
* Formato de fecha esperado: `AAAA-MM-DD`.
