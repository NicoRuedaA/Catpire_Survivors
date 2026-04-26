

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
  <img src="https://img.shields.io/badge/Status-Playable-brightgreen" />
</p>

<p align="center">
  <img src="/Docs/preview.gif" alt="screenshot"/>
</p>

A **Vampire Survivors-inspired roguelike** built in Java with the libGDX framework. Fight through endless enemy waves, collect XP gems, level up your character, and survive as long as possible


---

> **Current Status:** Playable Alfa released <br>
> **Last Updated:** 26/apr/2026

---

## Features

- **Auto-battle system** — weapons fire automatically, focus on movement and positioning
- **Enemy waves** — escalating difficulty with multiple enemy types and spawn patterns
- **XP & level-up** — collect gems dropped by enemies to level up and choose upgrades
- **Custom GLSL shaders** — visual effects written in GLSL (37% of the codebase)
- **Boss encounters** — distinct boss fights with unique attack patterns
- **Gradle build** — cross-platform build system for desktop and potential mobile targets

---

## Getting Started

**Requirements:** Java 17+ · Gradle (included via wrapper)

1. Clone the repository:
```bash
   git clone https://github.com/NicoRuedaA/Catpire_Survivors.git
```

2. Run the game:
```bash
   ./gradlew lwjgl3:run
```

3. Or build a runnable JAR:
```bash
   ./gradlew lwjgl3:jar
   # Output: lwjgl3/build/libs/
```

---

## Controls

| Input | Action |
|---|---|
| `WASD` / Arrow keys | Move |
| Weapons | Auto-fire |
| `Esc` | Pause |

---

## Project Structure

```
Catpire_Survivors/
├── core/src/          # Core game logic — entities, systems, screens
├── lwjgl3/            # Desktop launcher and platform config
├── assets/            # Sprites, audio, shader files (.glsl)
└── build.gradle       # Root build config
```

---

## Tech Stack

| Category | Detail |
|---|---|
| Language | Java 17 |
| Framework | libGDX 1.12 |
| Shaders | GLSL (custom visual effects) |
| Build | Gradle |
| Platform | Desktop (Windows / Linux / macOS) |

---

## Language

- English: [README.md](README.md)
- Español: [README_ES.md](README_ES.md)

---

Developed by [Nico Rueda](https://github.com/NicoRuedaA)
