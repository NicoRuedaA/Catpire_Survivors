[Read in English](README.md)

<h1 align="center">Catpire Survivors</h1>

<p align="center">
  <a href="https://www.java.com/">
    <img src="https://img.shields.io/badge/Java-17-orange?logo=java" />
  </a>
  <a href="https://libgdx.com/">
    <img src="https://img.shields.io/badge/libGDX-1.12-red" />
  </a>
  <a href="https://www.khronos.org/opengl/wiki/OpenGL_Shading_Language">
    <img src="https://img.shields.io/badge/Shaders-GLSL-green" />
  </a>
  <img src="https://img.shields.io/badge/Status-Alfa-brightgreen" />
</p>

<p align="center">
  <img src="/Docs/preview.gif" alt="captura de pantalla"/>
</p>

Un **roguelike inspirado en Vampire Survivors** construido en **Java** con el framework **libGDX**. Lucha contra oleadas interminables de enemigos, recogé gemas de XP, subí de nivel a tu personaje y sobreviví tanto cómo puedas.

---

> **Estado Actual:** Alfa Released (Jugable)  
> **Última Actualización:** 26-APR-2026

---

## 1. ¿Qué es Catpire Survivors?

Un roguelike auto-battler de ritmo rápido donde luchás contra probabilidades abrumadoras. Tus armas disparan automáticamente — tu único trabajo es sobrevivir a través de movimiento inteligente y posicionamiento.

- **Sistema de auto-batalla** — las armas disparan automáticamente, enfocate en el movimiento y posicionamiento
- **Oleadas de enemigos** — dificultad escalable con múltiples tipos de enemigo y patrones de aparición
- **XP y nivelación** — recogé las gemas que sueltan los enemigos para subir de nivel y elegir mejoras
- **Shaders GLSL personalizados** — efectos visuales escritos en GLSL (37% del código)
- **Encuentros con bosses** — batallas de bosses distintivas con patrones de ataque únicos
- **Build con Gradle** — sistema de build multiplataforma para escritorio y potenciales objetivos móviles

**Arquitectura:** Orientada a Objetos con Sistema de Entidades Basado en Componentes (ECS-lite)

---

## 2. Arquitectura

```
┌─────────────────────────────────────────────────────────────────────────┐
│                      DIAGRAMA DE COMPONENTES                              │
│                                                                         │
│  ┌─────────────────┐  ┌─────────────────┐  ┌─────────────────┐          │
│  │   Jugador       │  │   Enemigo        │  │   Proyectil     │          │
│  │   (Cerebro)     │  │   (Cuerpo)      │  │   (Controlador) │          │
│  │                 │  │                 │  │                 │          │
│  │  - Estado       │  │  - IA            │  │  - Movimiento  │          │
│  │  - PowerUps     │  │  - Animación    │  │  - Colisión     │          │
│  │  - Salud        │  │  - Generación   │  │  - Daño         │          │
│  └────────┬────────┘  └─────────────────┘  └─────────────────┘          │
│           │                                                             │
│           │  ┌───────────────────────────────────────────┐              │
│           └──│      GameManager / EnJuego                 │              │
│              │                                           │              │
│              │  - Gestión de oleadas                    │              │
│              │  - Puntuación y XP                       │              │
│              │  - Control de cámara                     │              │
│              └───────────────────────────────────────────┘              │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## 3. Sistemas Implementados

| Sistema | Estado | Descripción |
|---------|--------|-------------|
| **Movimiento del Jugador** | ✅ | Teclas WASD/Flechas, movimiento suave con aceleración |
| **Sistema de Auto-ataque** | ✅ | Las armas disparan automáticamente al enemigo más cercano |
| **IA de Enemigos** | ✅ | Persiguen al jugador, múltiples tipos de enemigo |
| **XP y Nivelación** | ✅ | Recogé gemas, elegí mejoras a través de UI |
| **Sistema de PowerUps** | ✅ | 8+ tipos de mejoras (Velocidad, Escudo, Más Proyectiles, etc.) |
| **Encuentros con Boss** | ✅ | Boss distintivos con patrones únicos |
| **Shaders GLSL** | ✅ | Efectos visuales personalizados |
| **Pausa/Reanudar** | ✅ | Tecla Esc para pausar |

---

## 4. Requisitos Técnicos

| Tecnología | Versión | Notas |
|------------|---------|-------|
| Java | **17+** | Versión LTS requerida |
| libGDX | **1.12** | Framework de juegos multiplataforma |
| GLSL | **OpenGL ES 2.0** | Lenguaje de shaders |
| Gradle | **8.x** | Build tool (incluido en wrapper) |

### Paquetes Requeridos (vía Gradle)

```bash
com.badlogicgames.gdx:gdx:1.12.1
com.badlogicgames.gdx:gdx-backend-lwjgl3:1.12.1
com.badlogicgames.gdx:gdx-tools:1.12.1
```

---

## 5. Instalación Rápida

```bash
# 1. Clonar el repositorio
git clone https://github.com/NicoRuedaA/Catpire_Survivors.git
cd Catpire_Survivors

# 2. Ejecutar el juego (escritorio)
./gradlew lwjgl3:run

# 3. O construir un JAR ejecutable
./gradlew lwjgl3:jar
# Output: lwjgl3/build/libs/
```

---

## 6. Controles / Uso

| Input | Acción | Notas |
|-------|--------|-------|
| `WASD` / `Flechas` | Mover | Movimiento en 8 direcciones |
| Armas | Auto-fuego | Dispara automáticamente al enemigo más cercano |
| `Esc` | Pausar/Reanudar | Alternar pausa del juego |
| Mouse | Seleccionar mejoras | Click para elegir opciones de nivelación |

---

## 7. Estructura del Proyecto

```
Catpire_Survivors/
├── core/src/main/java/io/github/catpire/      # Código principal del juego
│   ├── Player.java                            # Entidad y estado del jugador
│   ├── Enemy.java                             # Entidad e IA del enemigo
│   ├── Projectile.java                        # Sistema de proyectiles
│   ├── PowerUp/                               # Sistema de mejoras
│   │   PowerUp.java                       # Clase base
│   │   PowerUpManager.java                # Gestor de mejoras
│   │   PowerUpRegistry.java               # Registro de mejoras
│   ├── GameManager.java                       # Loop principal del juego
│   ├── InGame.java                            # Pantalla en juego
│   ├── InputManager.java                      # Manejo de input
│   └── *.java                                 # Otras entidades
│
├── lwjgl3/                                    # Launcher de escritorio
├── assets/                                    # Sprites, shaders (.glsl)
├── Docs/                                      # Documentación y medios
├── build.gradle                               # Config de build raíz
└── settings.gradle                            # Settings de Gradle
```

---

## 8. Convenciones del Código

### Estructura de Paquetes

```java
io.github.catpire          // Paquete principal
io.github.catpire.PowerUp // Sistema de PowerUp
```

### Convenciones de Nombres

- **Clases:** PascalCase (ej., `Player`, `EnemyManager`)
- **Métodos:** camelCase (ej., `update()`, `fireProjectile()`)
- **Constantes:** UPPER_SNAKE_CASE
- **Archivos:** Mismo nombre que la clase + `.java`

### Commits

Formato: `<type>(<scope>): <description>`

```bash
feat(player): agregar habilidad de dash
fix(enemy): corregir problema de pathfinding
refactor(powerup): mejorar sistema de mejoras
docs(readme): actualizar documentación
```

---

## 9. Solución de Problemas

### "El juego no inicia"

1. Verificá que Java 17+ esté instalado: `java -version`
2. Limpiá y reconstruí: `./gradlew clean lwjgl3:run`

### "Los shaders no cargan"

1. Asegurate de que los archivos `.glsl` estén en la carpeta `assets/`
2. Verificá las rutas de archivos en `resourceManager.java`

### "Lag / FPS bajo"

1. Reducí la tasa de aparición de enemigos en `EnemyManager`
2. Bajá la resolución en `Main.java`

---

## 10. Changelog

### v0.1.0 Alfa (2026-04-26)
- ✅ Feat: Sistema de combate auto-batalla
- ✅ Feat: Generación de oleadas de enemigos
- ✅ Feat: Sistema de XP y nivelación
- ✅ Feat: Mejoras de PowerUp (8 tipos)
- ✅ Feat: Encuentros con bosses
- ✅ Feat: Shaders GLSL personalizados
- ✅ Feat: Funcionalidad de pausa

---

## 11. Roadmap

Ver [ROADMAP.md](ROADMAP.md) para seguimiento detallado del progreso.

| Fase | Estado | Progreso |
|------|--------|----------|
| Gameplay Central | ✅ DONE | 100% |
| Sistemas de Progresión | ✅ DONE | 100% |
| Pulido Visual | ⚠️ IN PROGRESS | 50% |
| Audio | ⚠️ IN PROGRESS | 20% |
| Expansión de Contenido | 📋 BACKLOG | 0% |
| Port a Móvil | 📋 BACKLOG | 0% |
| Pulido y Release | 📋 BACKLOG | 10% |

### Resumen Rápido

```
Sistemas Centrales: ████████████████████ 100%
Progresión:          ████████████████████ 100%
Visuales:            ██████████░░░░░░░░░░░░ 50%
Audio:              ████░░░░░░░░░░░░░░░░░░░ 20%
Contenido:          ░░░░░░░░░░░░░░░░░░░░░░ 0%
Móvil:               ░░░░░░░░░░░░░░░░░░░░░ 0%
```


## 12. Recursos

- **Repositorio:** https://github.com/NicoRuedaA/Catpire_Survivors
- **Roadmap:** [ROADMAP.md](ROADMAP.md) (seguimiento detallado del progreso)
- **Documentación:** `Docs/`
- **Documentación de libGDX:** https://libgdx.com/

---


<i>Construido con Java + libGDX + pasión</i>