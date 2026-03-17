
<div align="center">
  <img src="banner.jpg" alt="Catpire Survivors banner" width="100%" />

  # Catpire Survivors

  **A Vampire Survivors-inspired roguelike built with Java and libGDX**

  [![Java](https://img.shields.io/badge/Java-17+-orange.svg)](https://adoptium.net/)
  [![libGDX](https://img.shields.io/badge/libGDX-game%20framework-red.svg)](https://libgdx.com/)
  [![GLSL](https://img.shields.io/badge/GLSL-custom%20shaders-blue.svg)](https://www.khronos.org/opengl/wiki/Core_Language_(GLSL))
  [![Build](https://img.shields.io/badge/Build-Gradle-brightgreen.svg)](https://gradle.org/)
  [![Platform](https://img.shields.io/badge/Platform-Desktop-lightgrey.svg)]()
</div>

---

## Overview

Catpire Survivors is a 2D top-down roguelike survival game developed in Java using the [libGDX](https://libgdx.com/) framework. Inspired by *Vampire Survivors*, you play as a vampire cat fighting off endless waves of enemies — surviving as long as possible while automatically attacking with unlockable weapons and upgrades.

The project features custom GLSL shaders for visual effects, a Gradle multi-module structure, and a complete game loop including player progression, enemy spawning, and a level-up system.

## Gameplay

- **Survive** increasingly difficult waves of enemies on a continuous map
- **Auto-attack** — your weapons fire automatically, so focus on positioning
- **Level up** by collecting XP gems dropped by defeated enemies
- **Choose upgrades** at each level-up to evolve your build
- **Die, learn, and go again** — each run is a fresh start

## Architecture

The project follows a standard libGDX multi-module Gradle layout:

```
Catpire_Survivors/
├── core/                   # Platform-independent game logic (main module)
│   └── src/main/java/
│       └── io/github/nicoruedag/catpire_survivors/
│           ├── CatpireSurvivors.java   # Main application class
│           ├── screens/                # GameScreen, MenuScreen, etc.
│           ├── entities/               # Player, Enemy, Projectile...
│           ├── systems/                # Game loop systems (movement, combat...)
│           └── shaders/                # GLSL shader sources
├── lwjgl3/                 # Desktop launcher (Windows / Linux / macOS)
│   └── src/main/java/.../  # Lwjgl3Launcher.java
├── assets/                 # Textures, audio, fonts, shader files
├── banner.jpg              # Repository banner
├── gitignore
└── README.md
```

The `core` module holds all platform-independent logic. The `lwjgl3` module is the desktop entry point — it boots the game via LWJGL3, libGDX's OpenGL backend for the desktop.

### Custom Shaders (GLSL)

Over a third of the codebase is GLSL (~37%), which means the visual style is meaningfully driven by custom shader programs. These handle effects such as sprite tinting, hit-flash, and post-processing passes applied to the game world at runtime.

## Getting Started

### Prerequisites

| Tool | Version |
|---|---|
| JDK | 17 or higher |
| Gradle | Wrapper included (`gradlew`) |
| IDE | IntelliJ IDEA recommended |

> [!NOTE]
> libGDX uses LWJGL3 under the hood for desktop builds. No additional native library installation is required — Gradle fetches all dependencies automatically on first sync.

### Running from the IDE

1. **Clone the repository**

   ```bash
   git clone https://github.com/NicoRuedaA/Catpire_Survivors.git
   cd Catpire_Survivors/Catpire_Survivors
   ```

2. **Open in IntelliJ IDEA**

   - File → Open → select the `Catpire_Survivors/` subfolder (the one containing `build.gradle`)
   - Wait for Gradle sync to complete

3. **Run the desktop launcher**

   Navigate to `lwjgl3/src/main/java/.../Lwjgl3Launcher.java` and run it directly, or use the Gradle task:

   ```bash
   ./gradlew lwjgl3:run
   ```

### Running from the command line

```bash
cd Catpire_Survivors/Catpire_Survivors
./gradlew lwjgl3:run
```

On Windows:

```bat
cd Catpire_Survivors\Catpire_Survivors
gradlew.bat lwjgl3:run
```

> [!TIP]
> If you get an `UnsatisfiedLinkError` or OpenGL context error, make sure your GPU drivers are up to date. libGDX requires OpenGL 2.0 or higher.

### Building a distributable JAR

```bash
./gradlew lwjgl3:jar
```

The output fat-JAR (with all dependencies bundled) will appear in `lwjgl3/build/libs/`. Run it with:

```bash
java -jar lwjgl3/build/libs/Catpire_Survivors-*.jar
```

## Controls

| Input | Action |
|---|---|
| `W A S D` / Arrow keys | Move the player |
| Weapons fire | Automatic |
| `Esc` | Pause / return to menu |

## Tech Stack

| Category | Technology |
|---|---|
| Language | Java 17+ |
| Game framework | [libGDX](https://libgdx.com/) |
| Desktop backend | LWJGL3 |
| Visual effects | Custom GLSL shaders |
| Build system | Gradle |
| IDE | IntelliJ IDEA |

## Inspiration

Catpire Survivors takes direct inspiration from [*Vampire Survivors*](https://store.steampowered.com/app/1794680/Vampire_Survivors/) — the minimalist auto-battler roguelike format — and reimagines it with a cat-vampire protagonist and custom visuals built entirely from scratch in Java.

---

<div align="center">
  Developed by <a href="https://github.com/NicoRuedaA">Nico Rueda</a>
</div>
