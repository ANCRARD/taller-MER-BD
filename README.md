# Diagrama Entidad-Relación — Sistema de Gestión "La Canasta"

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
- Precio_unitario_historico

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
