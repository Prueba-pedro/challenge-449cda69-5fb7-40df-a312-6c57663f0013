# Desarrollo de una API CRUD con Ruby on Rails y RSpec

La empresa necesita una API para gestionar productos en su catálogo. Los productos tienen un nombre, precio, stock y categoría. El sistema debe prohibir productos con nombres duplicados y precios negativos. La API debe ser idempotente para operaciones de creación y actualización.

## Informacion General

| Campo | Valor |
|-------|-------|
| **Tema** | ruby-on-rails |
| **Nivel** | junior-l2 |
| **Tipo** | practical |
| **Tiempo estimado** | 10 horas |

## Fases del Reto

### Fase 0: Configuración del Proyecto

**Objetivo:** Obtener el proyecto base funcional enviando el Código Base a un asistente de IA, que lo analizará, corregirá errores y generará un ZIP listo para usar.

**Tiempo estimado:** 15-30 minutos

**Instrucciones:**

- Asegúrate de tener instalado para ejecutar el proyecto: Un IDE o editor de código.
- Copia todo el contenido del campo **Código Base** de este reto — incluyendo el texto de instrucciones que aparece al inicio.
- Abre un asistente de IA (Claude en claude.ai, ChatGPT o Gemini — se recomienda Claude), pega el contenido copiado en el chat y envíalo.
- El asistente analizará los archivos, corregirá errores y generará un archivo ZIP descargable. Descárgalo y extráelo en la carpeta donde quieras trabajar.
- Verifica que el proyecto arranca sin errores.

**Entregable:** El proyecto compila/arranca sin errores.

<details>
<summary>Pistas de conocimiento</summary>

- Copia el Código Base completo incluyendo el texto de instrucciones al inicio — esas instrucciones le indican al asistente exactamente qué hacer con los archivos.
- Si el asistente no genera el ZIP automáticamente al terminar el análisis, escríbele: "genera el ZIP ahora".
- Si el proyecto tiene errores al arrancar, comparte el mensaje de error con el mismo asistente para que lo corrija.

</details>

### Fase 1: Configuración del entorno y modelo de producto

**Objetivo:** Configurar el entorno de desarrollo y crear el modelo de producto con sus validaciones básicas.

**Tiempo estimado:** 2 horas

**Instrucciones:**

- Configura el entorno de desarrollo con Ruby on Rails.
- Crea el modelo de producto con los campos necesarios: nombre, precio, stock y categoría.
- Agrega validaciones para evitar nombres duplicados y precios negativos.

**Entregable:** Entorno de desarrollo configurado y modelo de producto con validaciones básicas.

<details>
<summary>Pistas de conocimiento</summary>

- Recuerda que los nombres de productos deben ser únicos.
- Los precios no pueden ser negativos.

</details>

### Fase 2: Implementación de endpoints CRUD

**Objetivo:** Implementar los endpoints para crear, leer, actualizar y eliminar productos.

**Tiempo estimado:** 4 horas

**Instrucciones:**

- Crea los endpoints CRUD para productos.
- Asegura que la creación y actualización de productos sea idempotente.

**Entregable:** Endpoints CRUD implementados y funcionando correctamente.

<details>
<summary>Pistas de conocimiento</summary>

- Recuerda que la idempotencia implica que múltiples solicitudes con los mismos parámetros deben producir el mismo resultado.
- Utiliza RSpec para escribir pruebas unitarias para tus endpoints.

</details>

### Fase 3: Integración con RSpec y pruebas de integración

**Objetivo:** Integrar RSpec en el proyecto y escribir pruebas de integración para los endpoints.

**Tiempo estimado:** 4 horas

**Instrucciones:**

- Configura RSpec en el proyecto.
- Escribe pruebas de integración para los endpoints CRUD.
- Asegura que las pruebas cubran casos felices y edge cases.

**Entregable:** Pruebas de integración escritas y ejecutadas correctamente.

<details>
<summary>Pistas de conocimiento</summary>

- Recuerda cubrir tanto casos felices como edge cases en tus pruebas.
- Utiliza RSpec para escribir pruebas de integración que validen el comportamiento de tus endpoints.

</details>

## Dimensiones Evaluadas

- **queEs**: ¿Qué es un endpoint CRUD y por qué es importante en una API?
- **paraQueSirve**: ¿Para qué sirve la idempotencia en una API y cómo se implementa en Rails?
- **comoSeUsa**: ¿Cómo se utiliza RSpec para escribir pruebas de integración en Rails?
- **erroresComunes**: ¿Cuáles son los errores comunes al implementar endpoints CRUD y cómo se pueden evitar?

## Criterios de Evaluacion

- Configuración correcta del entorno de desarrollo con Ruby on Rails.
- Creación del modelo de producto con validaciones básicas.
- Implementación de endpoints CRUD idempotentes.
- Integración de RSpec y escritura de pruebas de integración.

---

*Reto generado automaticamente por Challenge Generator - Pragma*
