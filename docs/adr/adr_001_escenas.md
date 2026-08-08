# ADR-001
## Título
Arquitectura basada en escenas
## Contexto
El personalizador de comida requiere módulos de interfaz independientes (bases, ingredientes, resumen) que no dependan jerárquicamente entre sí.
## Decisión
Se estructuró el proyecto utilizando escenas separadas comunicadas exclusivamente mediante señales y Autoloads (`EventBus`, `GlobalManager`).
## Consecuencias
Garantiza bajo acoplamiento y facilita la escalabilidad del menú, pero requiere documentar estrictamente las señales globales para no perder trazabilidad.
