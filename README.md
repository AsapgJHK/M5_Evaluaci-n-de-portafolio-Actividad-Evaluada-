# Descripción del Proyecto 🛒
Este proyecto consiste en el diseño e implementación de un sistema de gestión de inventario y ventas para una tienda en línea, utilizando una base de datos relacional PostgreSQL. El objetivo principal es modelar, crear y manipular datos relacionados con productos, clientes, pedidos y proveedores, aplicando buenas prácticas de diseño de bases de datos y consultas SQL.

El proyecto está organizado en tres partes principales, cada una con su propio script SQL y un archivo README.md que documenta su propósito y contenido.

# Estructura de Carpetas 📂
El repositorio está estructurado de la siguiente manera para una mejor organización y comprensión:
````
├── sql/
│   ├── ddl/
│   │   ├── ddl_script_1_creacion_tablas.sql
│   │   
│   ├── dml/
│   │   ├── dml_script_2_manipulacion_datos.sql
│   │   
│   └── queries/
│       ├── sql_script_3_consultas.sql
│       
└── README.md
````

# Contenido de las Carpetas y Scripts

1. sql/ddl
Esta carpeta contiene el Lenguaje de Definición de Datos (DDL). El script ddl_script_1_creacion_tablas.sql es responsable de crear la estructura completa de la base de datos. Esto incluye la definición de las tablas para Clientes, Productos, Pedidos, Detalles_Pedido, Metodos_Pago y Pagos, estableciendo las claves primarias (PK) y claves foráneas (FK) para garantizar la integridad referencial.

### Modelo de Datos (ERD):

2. sql/dml
Aquí se encuentra el Lenguaje de Manipulación de Datos (DML). El script dml_script_2_manipulacion_datos.sql incluye las consultas SQL para insertar (INSERT), actualizar (UPDATE) y eliminar (DELETE) datos de las tablas. Este script sirve para poblar la base de datos con información de ejemplo y demostrar la manipulación de registros.

3. sql/queries
Esta sección está dedicada a las consultas SQL. El archivo sql_script_3_consultas.sql contiene ejemplos de consultas complejas para obtener información valiosa del sistema. Se utilizan cláusulas como SELECT, WHERE, JOIN (para relacionar tablas) y GROUP BY (para agrupar datos y realizar cálculos), demostrando cómo extraer información específica para la toma de decisiones.

# Requisitos y Tecnologías 🛠️
1. Sistema de Gestión de Base de Datos: PostgreSQL

2. Cliente de Base de Datos: DBeaver (recomendado) o similar

3. Lenguaje: SQL

# Cómo Ejecutar los Scripts ▶️
Para replicar este proyecto, sigue estos pasos:
1. Crea una base de datos en tu servidor PostgreSQL.

2. Abre el archivo ddl_script_1_creacion_tablas.sql en tu cliente SQL y ejecuta todas las sentencias para crear las tablas.

3. Abre el archivo dml_script_2_manipulacion_datos.sql y ejecuta las consultas para insertar los datos de ejemplo.

Finalmente, puedes probar las consultas del archivo sql_script_3_consultas.sql para obtener la información deseada de las tablas.
