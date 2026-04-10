# 🛒 Base de Datos - dbGamarraMarket

## 📌 Descripción

Este proyecto contiene la implementación de una base de datos llamada **dbGamarraMarket**, diseñada para gestionar la información de clientes, vendedores, prendas y ventas dentro de un sistema comercial.

---

## 🧱 Estructura de la Base de Datos

La base de datos está compuesta por las siguientes tablas:

* **CLIENTE** → Información de los clientes
* **VENDEDOR** → Información de los vendedores
* **PRENDA** → Productos disponibles
* **VENTA** → Registro de ventas realizadas
* **VENTA_DETALLE** → Detalle de cada venta

---

## 🔗 Relaciones

* Un **cliente** puede realizar muchas ventas
* Un **vendedor** puede registrar muchas ventas
* Una **venta** puede tener múltiples detalles
* Cada **detalle de venta** está asociado a una prenda

---

## ⚙️ Script de creación

Para crear la base de datos y sus tablas:

```sql
CREATE DATABASE dbGamarraMarket;
USE dbGamarraMarket;

-- Ejecutar aquí el script de creación de tablas
```

---

## 📋 Consultas utilizadas

### 🔹 Listar tablas

```sql
SHOW TABLES;
```

### 🔹 Ver estructura de tablas

```sql
DESC CLIENTE;
DESC VENDEDOR;
DESC PRENDA;
DESC VENTA;
DESC VENTA_DETALLE;
```

### 🔹 Ver relaciones (Foreign Keys)

```sql
SHOW CREATE TABLE VENTA;
SHOW CREATE TABLE VENTA_DETALLE;
```

---

## 📸 Evidencias

El proyecto incluye capturas de:

* Tablas creadas
* Estructura de tablas
* Relaciones entre tablas

---

## 👨‍💻 Autor

* Nombre: Eloy Matos
* Curso: Base de Datos

---

## 📌 Notas

Este proyecto fue desarrollado como práctica para comprender:

* Creación de tablas
* Llaves primarias y foráneas
* Relaciones entre entidades
* Uso básico de SQL

---
