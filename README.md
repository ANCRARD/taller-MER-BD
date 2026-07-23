# Diagrama Entidad-Relación — Sistema de Gestión "La Canasta"

## Promt usado

Actúa como un profesor experto en diseño de bases de datos. Necesito que generes un caso de estudio sobre la gestión de un supermercado, diseñado específicamente para un estudiante PRINCIPIANTE. El objetivo es que yo lea el texto, lo analice y ponga en práctica mis conocimientos construyendo el Modelo Entidad-Relación (MER) desde cero. Para que el ejercicio sea ideal para mi nivel básico, por favor aplica estas reglas: 1. Limita el alcance: El sistema debe contemplar entre 4 y 5 entidades principales como máximo (ej. Cliente, Producto, Venta, etc.). 2. Sé descriptivo pero claro: Describe los datos que el supermercado necesita guardar (atributos e identificadores únicos) de forma natural dentro de la historia. 3. Relaciones sencillas: Redacta las reglas de negocio de manera que las relaciones (1:N o N:M) sean fáciles de deducir. 4. IMPORTANTE: ¡NO me des la solución! Solo redacta el caso de estudio narrado. No hagas listas de entidades ni me muestres el MER. Quiero analizar el texto y extraer los requerimientos por mi cuenta.



## Caso de Estudio

Caso de estudio: Sistema de gestión para el supermercado "La Canasta"

El supermercado "La Canasta" es un negocio de barrio que ha crecido en los últimos años. Hasta ahora, la mayor parte de la información se ha manejado en cuadernos y hojas de cálculo, pero los propietarios desean implementar un sistema que les permita organizar mejor sus operaciones diarias.

Uno de los principales objetivos del sistema es mantener un registro de los productos que se venden. De cada producto desean conocer un código único que lo identifique, su nombre, una breve descripción, el precio de venta y la cantidad disponible en inventario. Cada producto debe poder identificarse de manera individual para evitar confusiones cuando existan artículos con nombres similares.

El supermercado también quiere registrar la información de sus clientes frecuentes, ya que muchos de ellos participan en un programa de fidelización. Para cada cliente es importante almacenar un número de identificación único, su nombre completo, número de teléfono, dirección y correo electrónico. Sin embargo, solo los clientes registrados podrán acumular puntos por sus compras.

Cada vez que un cliente realiza una compra, el sistema debe generar un comprobante de venta con un número consecutivo único. Además, es necesario guardar la fecha en la que se realizó la compra y el valor total pagado. Toda venta registrada debe estar asociada al cliente que la realizó, ya que el supermercado necesita consultar posteriormente el historial de compras de cada uno de ellos.

Durante una venta, el cliente puede adquirir uno o varios productos diferentes. Asimismo, un mismo producto puede aparecer en muchas ventas distintas a lo largo del tiempo. Para cada producto incluido en una venta, el supermercado necesita registrar cuántas unidades fueron compradas y el precio que tenía el producto en ese momento, ya que los precios pueden cambiar con el paso de los meses y es importante conservar el valor histórico de cada compra.

Los administradores también desean que el sistema permita consultar fácilmente todas las compras realizadas por un cliente específico, conocer qué productos fueron vendidos en una venta determinada y verificar cuántas unidades de cada producto se han vendido durante un período de tiempo.

Con este sistema esperan mejorar el control de sus ventas, mantener un historial confiable de las compras de sus clientes y llevar un seguimiento más organizado de los productos que comercializan.

**Autor:** Andrés Anaya

## Descripción

Este repositorio contiene el modelo entidad-relación (notación de Chen) del sistema de gestión propuesto para el supermercado de barrio **"La Canasta"**. El modelo permite registrar clientes, productos, ventas y el detalle de cada venta, manteniendo un historial confiable de compras y del precio histórico de cada producto vendido.

## Contenido del repositorio

| Archivo | Descripción |
|---|---|
| `Diagrama_ER_Andres_Anaya.drawio` | Diagrama entidad-relación editable, creado en [draw.io](https://app.diagrams.net) |

## Entidades y atributos

### Cliente
- ID_cliente *(llave primaria)*
- Nombre
- Telefono
- Direccion
- Correo

### Productos
- producto_ID *(llave primaria)*
- Nombre
- Precio
- Cant_inventario

### Venta
- numero_venta_ID *(llave primaria)*
- Fecha
- ID_cliente *(llave foránea → Cliente)*
- Valor_total

### Detalle_venta
- numero_venta_ID *(llave primaria compuesta, llave foránea → Venta)*
- producto_ID *(llave primaria compuesta, llave foránea → Productos)*
- Cantidad


## Relaciones

| Relación | Entidades | Cardinalidad |
|---|---|---|
| **realiza** | Cliente — Venta | 1:N |
| **contiene** | Venta — Detalle_venta | 1:N |
| **incluido en** | Productos — Detalle_venta | 1:N |

> **Nota:** la relación `contiene` (Venta–Detalle_venta) se representa como una entidad asociativa porque debe conservar la cantidad comprada y el precio del producto en el momento exacto de la venta, ya que el precio de los productos puede variar con el tiempo.

## Cómo visualizar o editar el diagrama

1. Entra a [app.diagrams.net](https://app.diagrams.net) (versión web de draw.io, sin necesidad de instalar nada).
2. Selecciona **Open Existing Diagram**.
3. Elige el archivo `Diagrama_ER_Andres_Anaya.drawio` de este repositorio (descárgalo primero desde GitHub, o usa la opción **Open from → GitHub** dentro de draw.io para abrirlo directo desde el repo).

## Tecnologías / herramientas utilizadas

- draw.io / diagrams.net — modelado del diagrama ER

## Licencia

Uso académico.
